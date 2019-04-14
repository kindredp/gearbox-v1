require 'csv'

class GearController < ApplicationController
  def index
    @csv_table = CSV.open("lib/seeds/gear.csv", :headers => true).read
  end
end