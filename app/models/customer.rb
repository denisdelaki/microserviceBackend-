class Customer < ApplicationRecord
    has_many :accounts
    attr_accessor :firstName, :lastName, :email, :phone, :address
end
