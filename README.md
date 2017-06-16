# mruby-plato-spi   [![Build Status](https://travis-ci.org/mruby-plato/mruby-plato-spi.svg?branch=master)](https://travis-ci.org/mruby-plato/mruby-plato-spi)
Plato::SPI (Serial Peripheral Interface) module
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

  # ... (snip) ...

  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-spi'
end
```

## example
```ruby
spi = Plato::SPI.open(0)
puts spi.transfer(0)
```

## License
under the MIT License:
- see LICENSE file
