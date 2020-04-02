class StaticController < ApplicationController
  def show
    begin
      render params[:page]
    rescue
      ren
    end
  end
end
