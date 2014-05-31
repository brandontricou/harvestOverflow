class Overflow < ActiveRecord::Base
  belongs_to :agency

  validates :item_type, :description, :expiration, presence: true
  PERISHABLE = [true, false]
  validates :perishable, inclusion: {in: PERISHABLE}

  def self.most_recent
  	where("created_at >= ?", 2.weeks.ago).order("created_at desc")
  end 
end