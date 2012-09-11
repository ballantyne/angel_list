module AngelList
  class Feed < Base
    def all(options={})
      get('https://api.angel.co/1/feed', options)
    end
    
    def find(id)
      get('https://api.angel.co/1/feed/'+id.to_s)
    end
  end
end