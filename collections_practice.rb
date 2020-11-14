def sort_array_asc (array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a, b|
        -(a<=>b)
    end
end

def sort_array_char_count (strings)
    strings.sort_by(&:length)
end

def swap_elements (array)
    # i = (0..array.size-3).find {|i| array[i] > array[i+1]}
    # array[i], array[i+1] = array[i+1], array[i] unless i.nil?
    temp = array[1]
    array[1] = array[2]
    array[2] = temp
    return array
end

def reverse_array(integers)
    integers.reverse!
end

def kesha_maker(array)
    array.each {|character| character[2] = "$"}
end

def find_a(a)
    a.select {|finda| finda.start_with?("a")}
end

def sum_array(numbers)
    numbers.inject(0){|sum, x| sum + x}
end

def add_s(array)
    array.each_with_index.collect do |element, index|
        if index == 1
            element
        else element[element.length] = "s"
            element
        end
    end
end
