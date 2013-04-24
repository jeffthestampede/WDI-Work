class MainController < ApplicationController
  def index
  end

  def send_email
    @to = params[:to]
    @subject = params[:subject]
    YoMailer.form_email(params[:to], params[:subject], params[:body]).deliver
  end
end