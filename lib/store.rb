class Store < ActiveRecord::Base
  has_many :employees
  before_destroy :has_employees?, prepend: true

  # Stores must always have a name that is a minimum of 3 characters
  validates :name, length: {minimum: 3}

  # Stores have an annual_revenue that is a number (integer) that must be 0 or more
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }


  # Stores must carry at least one of the men's or women's apparel 
  validate :apparel

  def apparel
    if !mens_apparel  && !womens_apparel
      puts "here"
      errors.add(:mens_apparel, "Store must carry at least one of the men's or women's apparel")
      errors.add(:womens_apparel, "Store must carry at least one of the men's or women's apparel")
    end
  end

  def has_employees?
    if !employees
      false
    end
  end

end

