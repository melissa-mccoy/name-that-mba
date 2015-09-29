class StudentsController < ApplicationController

  def index
    render json: Student.all
  end

  def index_a
    render json: Student.where(section: 'A')
  end

  def index_b
    render json: Student.where(section: 'B')
  end

  def index_c
    render json: Student.where(section: 'C')
  end

  def index_d
    render json: Student.where(section: 'D')
  end

end
