require 'rspec'
require "spec_helper"
include RSpec

RSpec.describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to be true
    end

    it "returns false if some of the Array elements are not empty" do
      expect(["", 1, "", Object.new, :a].all_empty?).to be false
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to be true
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["A", "A", "A"].all_same?).to be true
    end

    it "returns false if some of the Array elements are not the same" do
      expect(["", 1, "", Object.new, :a].all_same?).to be false
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to be true
    end
  end

  context "#any_empty?" do
    it "returns true if any element of the Array is empty" do
      expect(["", "A", "A"].any_empty?).to be true
    end

    it "returns false if none of elements of the Array is empty" do
      expect(["A", 1, "R", Object.new, :a].any_empty?).to be false
    end

    it "returns false for all empty Array" do
      expect([].any_empty?).to be false
    end
  end

  context "#none_empty?" do
    it "returns true if none of elements of the Array is empty" do
      expect(["A", "A", "A"].none_empty?).to be true
    end

    it "returns false if one of elements of the Array is empty" do
      expect(["", 1, "R", Object.new, :a].none_empty?).to be false
    end

    it "returns false for all empty Array" do
      expect([].none_empty?).to be true
    end
  end

end