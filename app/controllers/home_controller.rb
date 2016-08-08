class HomeController < ApplicationController
  before_action :authenticate_user!, only: [ :major, :professor ]
  def index
  end

  def major
    @maj = Major.all
  end

  def professor
    @pro = Professor.all
  end

  def show_major
    @maj = Major.find(params[:id])
    @lec = Lecture.where(major_id: @maj)
  end

  def show_professor
    @pro = Professor.find(params[:id])
    @lec = Lecture.where(professor_id: @pro)
  end

  def lecture
    @maj = Major.find(params[:id])
    @pro = Professor.find(params[:id])
  end

end
