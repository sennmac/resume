#encoding: utf-8
class ResumesController < ApplicationController
  before_action :set_resume, only: [:show,:react_it]

  # GET /resumes/1
  # GET /resumes/1.json
  def show
    @title = '【占戈的简历】rails_it!'
    respond_to do |format|
      format.html {render layout: 'resumes_application'}
      format.json { render json: @resume }
    end
  end

  # GET /
  def react_it
    @title = '【占戈的简历】react_it!'
    render layout: 'resumes_application'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_resume
     @resume = Resume.where(:code=>params[:id].downcase).last
  end

end
