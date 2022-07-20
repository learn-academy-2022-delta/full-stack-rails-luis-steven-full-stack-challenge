class BlogController < ApplicationController

def index 
    @blogs = Blog.all 
end 

def show 
    @blog = Blog.find(params[:id])
end 

def new
    @new = Blog.new
end

def create
    @exercise = Exercise.create(exercise_params)
    if @exercise.valid?
      redirect_to exercises_path
    else
      redirect_to new_exercise_path
    end
  end

end
