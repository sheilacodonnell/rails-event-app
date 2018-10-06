class Guest < ActiveRecord::Base
    belongs_to :event
    belongs_to :user

    attr_accessor :first_name
end