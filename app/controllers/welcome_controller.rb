class WelcomeController < ApplicationController
  def index

@todos = Todo.all
@todo = Todo.new
  end
 
  def show
 @todo = Todo.find(params[:id])  
end
 
  def new
  @todo = Todo.new  end

def create
 @todo = Todo.create todo_params
redirect_to "#"
end

private
    def todo_params
      params.require(:todo).permit(:title, :description)
    end
end
