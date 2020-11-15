class ApplicationRecord < ActiveRecord::Base
validates :title, presence: true  
validates :body, presence: true  

self.abstract_class = true
end
