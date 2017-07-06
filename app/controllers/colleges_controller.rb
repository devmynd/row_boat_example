class CollegesController < ApplicationController
  attr_accessor :colleges
  helper_method :colleges

  def index
    self.colleges = College.all.order(:name)
  end
end
