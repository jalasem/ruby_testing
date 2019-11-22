# frozen_string_literal: true

class Calculator
  def add(*args)
    args.reduce(0) { |sum, num| sum + num }
  end

  
  def substract(*args)
    firs = args[0]
    (args.drop 1).reduce(firs) { |ans, num| ans - num }
  end

  def multiply(*args)
    args.reduce(1) { |result, num| result * num }
  end

  def divide(*args)
    firs = args[0]
    (args.drop 1).reduce(firs) { |result, num| result / num }
  end
end
