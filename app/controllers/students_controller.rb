class StudentsController < ApplicationController

  # GET: /students
  get "/students" do
    @students = Student.all
    erb :"/students/index.html"
  end

  # GET: /students/new
  get "/students/new" do
    erb :"/students/new.html"
  end

  # POST: /students
  post "/students" do
    if params[:name] != "" && params[:grade] != ""
      @student = Student.create(params[:student])
      redirect "/students/#{@student.id}"
    else
      redirect "/students/new"
    end
    redirect "/students"
  end

  # GET: /students/5
  get "/students/:id" do
    @student = Student.find(params[:id])
    erb :"/students/show.html"
  end

  # GET: /students/5/edit
  get "/students/:id/edit" do
    @student = Student.find(params[:id])
    erb :"/students/edit.html"
  end

  # PATCH: /students/5
  patch "/students/:id" do
    @student = Student.find(params[:id])
    if params[:name] != "" && params[:grade] != ""
      @student.update(params[:student])
      redirect "/students/#{@student.id}"
    else
      redirect "/students/#{@student.id}/edit"
    end
    redirect "/students/:id"
  end

  # DELETE: /students/5/delete
  delete "/students/:id/delete" do
    @student = Student.find(params[:id])
    @student.delete
    redirect "/students"
  end
end
