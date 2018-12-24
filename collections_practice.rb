# your code goes here
require "pry"

def begins_with_r(array)
  array.each do |item|
    if item[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  i = []
  array.each do |item|
    if item.include?("a")
      i << item
    end
  end
  i
end

def first_wa(array)
  array.each do |item|
    if item[0] == "w" && item[1] == "a"
      return item
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    item.class != String
  end
  array
end

def count_elements(array)
  i, a = 0, []
  array.each do |item|
    if a.include?(item) == false
      a << item
      a[-1][:count] = 0
    else
      a[-1][:count] += 1
    end
  end
  a
end

def find_cool(array)
  array.each do |item|
    if item.has_value?("cool")
      return [item]
    end
  end
end
