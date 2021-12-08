module Exercise
  module Arrays
    class << self
      def replace(array)
        array = array.map { |el| el.positive? ? array.max : el }
      end

      def search(array, query)
        min = 0
        max = array.length - 1
        mid = (min + max) / 2
        return mid if query == array[mid]
        return -1 if array.empty? || !array.include?(query)

        while query > array[mid]
          mid += 1
        end
        while query < array[mid]
          mid -= 1
        end
        mid
      end
    end
  end
end
