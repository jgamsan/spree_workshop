module Spree
  class Workshop < ActiveRecord::Base
    attr_accessible :name, :address, :town_id, :phone, :fax, :email, :notes,
                    :price_for_car, :price_for_moto, :province
    attr_accessor :province
    belongs_to :town
    validates_format_of :email,
                        :with    => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                        :message => "email incorrecto",
                        :unless => "email.blank?"
    validates :town_id, :address, :name, :presence => true

    scope :by_state, lambda { |state|
    joins(:town).where("spree_towns.state_id = ?", state)
  }
    scope :all_states, joins(:town).all
  end
end
