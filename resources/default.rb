actions :install, :remove, :upgrade

attribute :package, :kind_of => String, :name_attribute => true
attribute :source, :kind_of => String
attribute :version, :kind_of => String
attribute :args, :kind_of => String
attribute :timeout, :kind_of => Integer, :default => 3600

def initialize(*args)
  super
  @action = :install
end

attr_accessor :exists, :upgradeable
