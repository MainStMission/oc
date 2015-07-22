# -*- encoding : utf-8 -*-
class TimeClockController < ApplicationController
  expose(:volunteers) { Volunteer.page params[:page] }
end
