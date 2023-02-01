#!/usr/bin/env -S ruby -W0

require "inline"

class MyTest
  inline do |builder|
    builder.c "
      long factorial(int max) {
        int i=max, result=1;
        while (i >= 2) { result *= i--; }
        return result;
      }"
  end
end

factorial_5 = MyTest.new.factorial 5
puts factorial_5
