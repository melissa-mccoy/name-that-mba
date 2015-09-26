class StudentsController < ApplicationController
  # before_filter :parse_request

  def start
  end

  def index
    render json: Student.all
  end

  # def show
  #   render json: Student.find(@json['id'])
  # end

  # def show
  #   @true_student = Student.find(params[:id])
  #   false_student_ids = ActiveRecord::Base.connection.select_values("select id from students").reject { |i| i == @true_student.id }
  #   @false_students = [Student.find(rand(false_student_ids)), Student.find(rand(false_student_ids)), Student.find(rand(false_student_ids))]
  # end

  # def check_answer
  #   student = Student.find(@json['id'])
  #   student.name == @json['answer'] ? render json: 'true' : render json: 'false'
  # end

  # def wrong_answers
  #   @
  # end

  # def new_question
  #   rand_student_id = rand(ActiveRecord::Base.connection.select_values("select id from students"))
  #   render json: Student.find(rand_student_id)
  # end

  # private
  # def parse_request
  #  @json = JSON.parse(request.body.read)
  # end

end
