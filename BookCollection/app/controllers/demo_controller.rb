class DemoController < ApplicationController
  layout false

  def home
    render('home')
  end

  def AddBook
    render('AddBook')
  end

  def UpdateBook
    render('UpdateBook')
  end

  def ShowDetails
    render('ShowDetails')
  end

  def DeleteBook
    render('DeleteBook')
  end

  def go_home
    redirect_to(:action => 'home')
  end
end
