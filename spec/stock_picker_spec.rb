# frozen_string_literal: true
require 'spec_helper'
require_relative '../stock_picker'

RSpec.describe "stock_picker" do
  describe "#stock_picker" do
    it "returns the indecies of the days that give the best returns" do
      array = [17,3,6,9,15,8,6,1,10]
      expect(stock_picker(array)).to eq([1, 4])
    end

    it "returns the indecies of the days that give the best returns" do
      array = [17,3,6,9,8,15,6,1,10]
      expect(stock_picker(array)).to eq([1, 5])
    end

    it "returns the indecies of the days that give the best returns" do
      array = [2,5,1,12,1,22,3,18]
      expect(stock_picker(array)).to eq([2, 5])
    end

    it "returns the indecies of the days that give the best returns" do
      array = [100,23,3,15,50,7]
      expect(stock_picker(array)).to eq([2, 4])
    end
  end
end
