class Survivor < ApplicationRecord

    validates :name, 
            presence: true, 
            length: {minimum: 2, maximum: 70, message: "%{value} isn't a valid name"}, 
            format: {with: /\A[A-Z][a-zA-Z][^#&<>\"~;$^%{}?]{1,70}\z/}

    validates :age, 
            presence: true, 
            inclusion: { in: 1..120, message: "%{value} is not valid" },
            numericality: { only_integer: true }

    validates :gender, 
            presence: true, 
            inclusion: { in: %w(Male Female), 
            message: "%{value} isn't a valid value for gender" }

    validates :latitude, 
            presence: true, 
            numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }

    validates :longitude, 
            presence: true, 
            numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
    
    validates :abducted,
            presence: true,
            inclusion: { in: %w(yes no),
            message: "%{value} isn't 'yes' or 'no' answer" }

    validates :abduct_score,
            numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }            
end
