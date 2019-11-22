# frozen_string_literal: true

require './lib/calculator'

RSpec.describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it 'returns the sum of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe '#substract' do
    it 'returns the result of substracting a number from another number' do
      calculator = Calculator.new
      expect(calculator.substract(5, 2)).to eql(3)
    end

    it 'returns the result of substracting several numbers from a number' do
      calculator = Calculator.new
      expect(calculator.substract(10, 2, 5, 1)).to eql(2)
    end
  end

  describe '#multiply' do
    it 'returns the multiple of two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(5, 2)).to eql(10)
    end

    it 'returns the multiple of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(5, 2, 10)).to eql(100)
    end
  end

  describe '#divide' do
    it 'returns the result of dividing a number by another number' do
      calculator = Calculator.new
      expect(calculator.divide(10, 2)).to eql(5)
    end

    it 'returns the result of dividing a number by multiple numbers' do
      calculator = Calculator.new
      expect(calculator.divide(10, 2, 5)).to eql(1)
    end
  end
end
