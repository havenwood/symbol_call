require_relative 'helper'

class Example
  using SymbolCall

  def argument
    1.upto(3).map(&:to_s.(2))
  end

  def argument_and_block
    ['xi418', 'xo419'].map(&:gsub.(/\d+/) { |n| n.to_i.next })
  end
end

describe Example do
  let(:example) { Example.new }

  it 'takes arguments' do
    assert_equal example.argument, ["1", "10", "11"]
  end

  it 'takes arguments and blocks' do
    result = 
    assert_equal example.argument_and_block, ['xi419', 'xo420']
  end
end
