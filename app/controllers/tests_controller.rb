class TestsController < ApplicationController
  def show
    @test = Test.find(params[:id])
  end

  def index
    @tests = Test.all
  end

  def create
    @test = Test.new(title: Date.today, user: current_user)
    if @test.save
    Question.all.each do |q|
      TestQuestion.create(test:@test, question:q)
    end
    redirect_to test_path(@test)
    else
      render :new
    end
  end
  
  def new
    @test = Test.new
  end

end