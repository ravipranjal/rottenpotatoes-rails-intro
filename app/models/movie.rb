class Movie < ActiveRecord::Base
    def self.all_ratings
        self.distinct.pluck(:rating);
    end
    
    def self.with_ratings(ratings_list)
        ratings_list.nil? ? self.all : self.where('rating': ratings_list)
    end
    
end
