class Overflow < ActiveRecord::Base
  belongs_to :agency

  def self.most_recent
  	where("created_at >= ?", 2.weeks.ago).order("created_at desc")
  end
end
