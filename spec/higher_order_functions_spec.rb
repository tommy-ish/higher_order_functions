# frozen_string_literal: true

RSpec.describe HigherOrderFunctions do
  using HigherOrderFunctions
  it "unfolds three" do
    expect(3.unfold(proc { |x| x.zero? }, proc { |x| x }) { |n| n - 1 }).to eq [3, 2, 1]
  end
  it "sequences one" do
    expect(1.sequence { |x| x + 2 }.take(10)).to eq [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
  end
  it "scans" do
    expect([1, 2, 3, 4, 5, 6, 7, 8, 9].scan { |result, item| result + item }).to eq [1, 3, 6, 10, 15, 21, 28, 36, 45]
  end
  it "right injects" do
    expect([1, 2, 3].inject_right { |result, item| item + result }).to eq 6
  end
  it "right injects" do
    expect([1, 2, 3].inject_right(init: 0) { |result, item| item + result }).to eq 6
  end
  it "right reduces" do
    expect([1, 2, 3].reduce_right { |result, item| item + result }).to eq 6
  end
end
