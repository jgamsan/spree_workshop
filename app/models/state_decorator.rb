Spree::State.class_eval do
  has_many :towns, :class_name => "Spree::Town"
end
