class Spree::Workshop < ActiveRecord::Base
  attr_accessible :name, :address, :town_id, :phone, :fax, :email, :notes, :price
  cattr_accessor :province

  validates_format_of :email,
                      :with    => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message => "email incorrecto",
                      :unless => "email.blank?"
end
