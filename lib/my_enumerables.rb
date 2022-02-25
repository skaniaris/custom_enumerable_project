module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0 
    while i < self.length 
      yield self[i], i
      i += 1
    end 
    return self 
  end 

  def my_select
    i = 0 
    pick = Array.new 

    while i < self.length 
      if yield self[i]
        pick.push(self[i])
      end 
      i += 1 
    end 
    return pick 
  end 

  def my_all?
    i = 0 
    count = 0 
    while i < self.length 
      if yield self[i] 
        count += 1 
      end 
      i += 1
    end 
    if count == self.length
      return true
    else 
      return false
    end 
  end 

  def my_any?
    i = 0 
    count = 0 
    while i < self.length 
      if yield self[i] 
        count += 1 
      end 
      i += 1
    end 
    if count > 0 
      return true
    else 
      return false
    end 
  end 

  def my_none?
    i = 0 
    count = 0 
    while i < self.length 
      if yield self[i] 
        count += 1 
      end 
      i += 1
    end 
    if count == 0 
      return true
    else 
      return false
    end 
  end 

  def my_count
    i = 0 
    count = 0 
    while i < self.length 
      if block_given?
      if yield self[i] 
        count += 1 
      end
    else
      return self.length
    end  
      i += 1
    end 
    return count
  end 

  def my_map 
    i = 0 
    na = Array.new 

    while i < self.length 
      new_value = yield self[i]
      na.push(new_value)
      i += 1
    end 
    return na
  end 

  def my_inject(value)
    i = 0 
    nxt = value 
    while i < self.length 
    nxt = yield nxt, self[i]
      i += 1
    end 
    return nxt 
  end 
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    i = 0 
    while i < self.length 
      yield self[i]
      i += 1
    end 
    return self 
  end 
end
