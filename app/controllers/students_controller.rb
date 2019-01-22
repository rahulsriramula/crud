class StudentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_student, :only => [:show, :edit, :update, :destroy]
  def index
  	@students = Student.all
  end

  def new
  	@student = Student.new
  end

  def create
  	@student = Student.new(student_params)
		respond_to do |format| 
			if @student.save
				format.html { redirect_to @student, notice: 'Student was successfully created.'}
				format.json { render json: show, :status => :created, location: @student }
			else
				format.html { render action: 'new'}
				format.json { render json: @student.errors, :status => :unprocessable_entity }
			end
    end
  end

  def show
  end

  def edit
  end

  def update
		respond_to do |format|
			if @student.update(student_params)
				format.html { redirect_to @student, notice: 'student was successfully updated.' }
				format.json { render json: show, status: :updated, location: @student }
			else
				format.html { render action: 'update'}
				format.json { render json: @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end
  
  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit!
  end
  
end
