class CausesController < ApplicationController
  before_action :authenticate_user!

  def index
    @causes = Cause.all
  end

  def show
    @cause = Cause.find(params[:id])
  end

  def new
    @cause = Cause.new
    @cause.task_id = params[:task_id]
    @cause.solutions.build
  end

  def edit
    @cause = Cause.find(params[:id])
  end

  def create
    @cause = Cause.new(cause_params)
    @cause.task_id = params[:cause][:task_id]
    if @cause.save
      redirect_to causes_path, notice: '登録しました'
    else
      render :new 
    end
  end

  def update
    @cause = Cause.find(params[:id])
    if @cause.update(cause_params)
      redirect_to @cause, notice: '編集しました'
    else
      render :edit
    end
  end

  def destroy
    @cause = Cause.find(params[:id])
    @cause.destroy
    redirect_to causes_url, notice: '削除しました'
  end

  private
  def cause_params
    params.require(:cause).permit(:task_id, :content, :movie, :picture, solutions_attributes: [:id, :content, :picture, :_destroy])
  end
end
