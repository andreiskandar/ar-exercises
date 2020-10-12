class Store < ActiveRecord::Base
  
  attr_accessor :name, :annual_revenue, :mens_apparel, :womens_apparel

  # def initialize(name, annual_revenue, mens_apparel, womens_apparel)
  #   @name = name
  #   @annual_revenue = annual_revenue
  #   @mens_apparel = mens_apparel
  #   @womens_apparel = womens_apparel
  # end

  # def info
  #   "#{name} #{annual_revenue} womens_apparel:#{womens_apparel} mens_apparel:#{mens_apparel}"
  # end

    
end
