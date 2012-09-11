module AngelList
  class User < Base
        
    def me
      AngelList::Response.new(self.auth.token.get('https://api.angel.co/1/me')).content
    end
    
    def find(id)
      AngelList::Response.new(self.auth.token.get('https://api.angel.co/1/users/'+id.to_s)).content
    end
    
    def batch(array=[])
      AngelList::Response.new(self.auth.token.get('https://api.angel.co/1/users/batch?ids='+array.join(','))).content
    end
    
    def search(string)
      AngelList::Response.new(self.auth.token.get('https://api.angel.co/1/users/search?slug='+URI.escape(string))).content
    end
  end
end