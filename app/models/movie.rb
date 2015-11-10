class Movie < ActiveRecord::Base

validates :director_id, :presence => true
validates :title, :presence => true, :uniqueness => { :scope => :year}
validates :year, :numericality => { only_integer: true }, :greater_than =>
end
