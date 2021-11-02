class Api::TodosController < ApplicationController
  def index
    @todos = Todo.all
    render json: @todos
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render json: "create new todo.\n", status: 200
    else
      render json: "fail to create todo.\n", status: 500
    end
  end

  private
    def todo_params
      params.require(:todo).permit(:title, :detail, :is_done)
    end
end
