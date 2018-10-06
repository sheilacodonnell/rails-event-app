class Event < ActiveRecord::Base
    belongs_to :host, class_name: 'User', foreign_key: 'host_id'
    has_many :guests
    has_many :users, through: :guests
end