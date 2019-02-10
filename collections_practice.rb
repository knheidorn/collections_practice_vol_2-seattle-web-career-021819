def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  a_array = []
  array.collect do |word|
    if word.include?("a")
     a_array << word
    end
  end
  a_array
end

def first_wa(array)
  array.find do |word|
    if word[0] == "w" && word[1] == "a"
      word
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
  array
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value| 
    key.merge(count: value.length)
  end
end

def merge_data(array, data)

end