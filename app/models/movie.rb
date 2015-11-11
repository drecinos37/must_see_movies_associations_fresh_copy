class Movie < ActiveRecord::Base
validates :title, :presence=>true, :uniqueness=>{:scope=>:year}
validates :year, :numericality=>{:only_integer=>true, :greater_than_or_equal_to=>1870, :less_than_or_equal_to=>2050, :allow_blank=>true}
validates :director_id, :presence => true
end
