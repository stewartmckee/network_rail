module NetworkRail
  module Configuration
    VALID_OPTIONS_KEYS = [:user_name, :password, :late_threshold].freeze
    
    DEFAULT_USERNAME = nil
    DEFAULT_PASSWORD = nil
    
    attr_accessor *VALID_OPTIONS_KEYS
    
    def self.extended(base)
      base.reset
    end
    
    def configure
      yield self
    end
    
    def reset
      self.user_name = DEFAULT_USERNAME
      self.password = DEFAULT_PASSWORD
      self.late_threshold = 60
      self
    end
  end
end