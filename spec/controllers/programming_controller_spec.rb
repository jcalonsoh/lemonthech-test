require 'rails_helper'

RSpec.configure do |c|
  c.infer_base_class_for_anonymous_controllers = false
end

RSpec.describe ProgrammingController, type: :controller do
  describe 'Testing Fractal Counter Zeros' do
    class FakesFractalCounterController < ApplicationController
      include FractalZeros
    end

    describe FakesFractalCounterController do
      it 'Count 0 zeros of number 0' do
        expect(FractalZeros.counter(0)).to eq(0)
      end

      it 'Count 0 zeros of number 3' do
        expect(FractalZeros.counter(3)).to eq(0)
      end

      it 'Count 1 zeros of number 5' do
        expect(FractalZeros.counter(5)).to eq(1)
      end

      it 'Count 2 zeros of number 12' do
        expect(FractalZeros.counter(12)).to eq(2)
      end

      it 'Count 3 zeros of number 15' do
        expect(FractalZeros.counter(15)).to eq(3)
      end

      it 'Count 4 zeros of number 20' do
        expect(FractalZeros.counter(20)).to eq(4)
      end
    end
  end

  describe 'Testing number to words' do
    class FakesNumberToWordsController < ApplicationController
      include NumbersToWords
    end

    describe FakesNumberToWordsController do
      it 'Words of 10' do
        expect(NumbersToWords.number(10).upcase).to eq('Ten'.upcase)
      end

      it 'Words of 22' do
        expect(NumbersToWords.number(22).upcase).to eq('twenty two'.upcase)
      end

      it 'Failed Words of 33' do
        expect(NumbersToWords.number(33).upcase).to_not eq('Blah'.upcase)
      end

      it 'Failed Words of 0' do
        expect(NumbersToWords.number(0).upcase).to eq('')
      end

      it 'Failed Words of 1000' do
        expect(NumbersToWords.number(1000).upcase).to match('thousand'.upcase)
      end
    end
  end

end
