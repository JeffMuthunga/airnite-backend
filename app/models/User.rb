class User < ActiveRecord::Base

    has_many :reviews
    has_many :properties, through: :reviews


end