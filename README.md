# SymbolCall

SymbolCall refines Symbol#call to allow Symbol#to_proc take arguments and blocks. This has [come up](https://twitter.com/banisterfiend/status/444514395067281408) a few times in #ruby on IRC and on https://bugs.ruby-lang.org issues like [here](https://bugs.ruby-lang.org/issues/9076) and [here](https://bugs.ruby-lang.org/issues/9095). So here's a [tiny](/lib/symbol_call.rb) gem called `symbol_call` that enables this syntax inside of a lexical scope using a refinement.

## Installation

```bash
gem install symbol_call
```

## Usage

```ruby
require 'symbol_call'

module Example
  using SymbolCall

  def self.argument
    [1, 2, 3].map &:to_s.(2)
  end

  def self.argument_and_block
    ['XI418', 'XO419'].map &:gsub.(/\d+/) { |n| n.to_i.next }
  end
end

Example.argument
["1", "10", "11"]

Example.argument_and_block
["XI419", "XO420"]
```

## Requirements

SymbolCall requires Ruby 2.1+ for refinements.
