module ORM
  class ObjectType
    attr_reader   :id
    attr_accessor :name
    
    def initialize(options={})
      @id       = options[:id]
      self.name = options[:name]
    end
  end
end
