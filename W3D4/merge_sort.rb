class Array
    def merge_sort
        return self if self.length <=1
        mid = self.length/2
        left = self[0...mid]
        right = self[mid..-1]
        sorted_left = left.merge_sort
        sorted_right = right.merge_sort
        merge(sorted_left, sorted_right)
    end
    def merge(left, right)
        merged = []
        until left.empty? || right.empty?
            if left[0] < right[0]
                merged << left.shift
            else
                merged << right.shift
            end
        end
        merged + left + right
    end
    
end

arr = [15,10,2,8,4,7,9,5]
p arr.merge_sort

