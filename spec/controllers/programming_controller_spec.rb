require 'rails_helper'

RSpec.configure do |c|
  c.infer_base_class_for_anonymous_controllers = false
end

RSpec.describe ProgrammingController, type: :controller do
  class FakesFractalCounterController < ApplicationController
    include FractalZeros
  end

  describe FakesFractalCounterController do
    it 'Should count 0 zeros of number 0' do
      expect(FractalZeros.counter(0)).to eq(0)
    end

    it 'Should count 0 zeros of number 3' do
      expect(FractalZeros.counter(3)).to eq(0)
    end

    it 'Should count 1 zeros of number 5' do
      expect(FractalZeros.counter(5)).to eq(1)
    end

    it 'Should count 2 zeros of number 12' do
      expect(FractalZeros.counter(12)).to eq(2)
    end

    it 'Should count 3 zeros of number 15' do
      expect(FractalZeros.counter(15)).to eq(3)
    end

    it 'Should count 4 zeros of number 20' do
      expect(FractalZeros.counter(20)).to eq(4)
    end
  end

end
