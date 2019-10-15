module Chain
  class AllSuperClass
    def initialize(obj)
      @obj = obj.class == Class ? obj : obj.class
    end

    def lookup
      arr = []
      def repeat(arr, obj)
        unless !obj
          arr << obj
          repeat(arr, obj.superclass)
        end
      end
      repeat(arr, @obj)
      return arr
    end
  end
end