require "dopa_core/engine"

module DopaCore
  mattr_accessor :player_class
  mattr_accessor :action_class

  def self.root
    File.expand_path(File.dirname(File.dirname(__FILE__)))
  end

  def self.models_dir
    "#{root}/app/models/dopa_core/"
  end

  def self.controllers_dir
    "#{root}/app/controllers/dopa_core/"
  end
end
