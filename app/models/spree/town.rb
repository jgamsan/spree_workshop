module Spree
  class Town < ActiveRecord::Base
    attr_accessible :name
    has_many :workshops
    belongs_to :state

    scope :by_state, lambda { |state|
    joins(:town).where("spree_towns.state_id = ?", state)
  }
  end
end
