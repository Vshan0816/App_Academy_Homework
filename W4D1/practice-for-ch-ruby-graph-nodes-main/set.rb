class Set
    def initialize
      @elements = []
    end
  
    def add(element)
      @elements << element unless @elements.include?(element)
    end
  
    def remove(element)
      @elements.delete(element)
    end
  
    def include?(element)
      @elements.include?(element)
    end
  
    def size
      @elements.size
    end
  
    def empty?
      @elements.empty?
    end
  
  end