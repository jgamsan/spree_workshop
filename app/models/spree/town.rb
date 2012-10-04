module Spree
  class Town < ActiveRecord::Base
    attr_accessible :name
    has_many :workshops
    belongs_to :state

  end
end
