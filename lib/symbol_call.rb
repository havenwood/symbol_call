require 'symbol_call/version'

module SymbolCall
  refine Symbol do
    def call *args, &block
      ->(obj) { obj.public_send self, *args, &block }
    end
  end
end
