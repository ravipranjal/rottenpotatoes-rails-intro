class Movie < ActiveRecord::Base
    def self.all_ratings
        self.distinct.pluck(:rating)
    end
    
    def self.with_ratings(ratings_list, to_sort)
        ratings_list.map!(&:upcase)
        ratings_list.nil? ? self.all.order(to_sort) : self.where('rating': ratings_list).order(to_sort)
    end
end
