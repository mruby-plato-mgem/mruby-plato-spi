#
# Plato::SPI module
#
module Plato
  module SPI
    @@device = nil

    def self.register_device(device)
      @@device = device
    end

    def self.open(*args)
      raise "SPI device is not registered." unless @@device
      @@device.new(*args)
    end

    def initialize(*args); end
    def transfer(data); end
    def _start; end
    def _end; end

  end
end
