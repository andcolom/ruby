def divisivel_por_3(num)
  num%3==0
end

def divisilvel_por_5(num)
  num%5==0
end

def fizzbuzz(num)
  if (divisivel_por_3 num) && (divisilvel_por_5 num)
    return "fizzbuzz"
  end
  if divisivel_por_3 num
    return "fizz"
  end
  if divisilvel_por_5 num
    return "buzz"
  end
  num
end
