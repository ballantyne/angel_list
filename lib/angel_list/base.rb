module AngelList
  class Base
    attr_accessor :auth
    
    def initialize(auth)
      self.auth = auth
    end
  end
end


