

# Part 1

def sum arr
  i=arr.length
  if i==0
    return 0
  else
    s=0
    for j in 0...i
      s+=arr[j]
    end
    return s
  end
end

def max_2_sum arr
  i=arr.length
  if i==0
    return 0
  elsif i==1
    return arr[0]
  else
    arr.sort
    return arr[i-1]+arr[i-2]
  end
end

def sum_to_n? arr, n
  i=arr.length
  if i==0
    if n==0
      return true
    end
  elsif i==1
    if arr[0]==n
      return true
    end
  else
    for j in 0...i
      for k in j+1...i
        if arr[j]+arr[k]==n
          return true
        end
      end
    end
  end
end

# Part 2

def hello(name)
  return "Hello,"+name
end

def starts_with_consonant? s
  c=s.upcase[0]
  if c=~/[A-Z]/
    if c=~/[AEIOU]/
      return false
    else
      return true
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s=~/[0-1]+/
    if s.to_i(base=2)==0
      return false
    elsif s.to_i(base=2)%4==0
      return true
    else 
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(i,p)
    if (i.empty?||p<=0)
      raise ArgumentError
    else
      @isbn=i
      @price=p
    end
  end
  def getIsbn
    @isbn
  end
  def getPrice
    @price
  end
  def setIsbn(i)
    if i.empty?
      raise ArgumentError
    else
      @isbn=i
    end
  end
  def setPrice(p)
    if p<=0
      raise ArgumentError
    else
      @price=p
    end
  end
  def price_as_string
    return "$"+format("%.2f",@price).to_s
  end
end

