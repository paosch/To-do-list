class TodosController < ApplicationController
  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to root_path
  end

  def destroy
  end

  def todo_params
    params.require(:todo).permit(:item)
  end
end
