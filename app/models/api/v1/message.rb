# frozen_string_literal: true

module Api
  module V1
    # messages model with validations
    class Message < ActiveRecord::Base
      validates :email, presence: true,
                        format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                                  message: 'invalid email' }
      validates :first_name, presence: true
      validates :last_name, presence: true
    end
  end
end
