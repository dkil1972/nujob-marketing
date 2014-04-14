class CoursesController < ApplicationController

  def create
    @course = Course.new(params[:course].permit(:email))
    if @course.save
      flash[:success] = t("messages.create_success")
    else
      @error = @course.errors.full_messages
    end
    respond_to do |format|
      format.js
    end
  end
end