class CollegesController < ApplicationController
  PATH = Rails.root.join("most-recent-college-cohorts-scorecard-elements.csv")

  attr_accessor :colleges
  helper_method :colleges

  def index
    self.colleges = College.all.order(:name)
  end

  def delete_all
    College.delete_all
    redirect_to colleges_path
  end

  def basic_import
    BasicCollegeBoat.import(PATH)
    redirect_to colleges_path
  end

  def advanced_import
    AdvancedCollegeBoat.import(PATH)
    redirect_to colleges_path
  end
end
