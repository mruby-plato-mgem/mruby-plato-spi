# Plato::SPI class

class S
  def initialize(*args); end
  def transfer(data); data; end
  def _start; end
  def _end; end
end

assert('SPI', 'class') do
  assert_equal(Plato::SPI.class, Module)
end

assert('SPI', 'register_device') do
  assert_nothing_raised {
    Plato::SPI.register_device(S)
  }
end

assert('SPI', 'open') do
  Plato::SPI.register_device(S)
  s1 = Plato::SPI.open(0)
  s2 = Plato::SPI.open(1, 1)
  s3 = Plato::SPI.open(2, 1, :lsbfirst)
  s4 = Plato::SPI.open(3, 1, :msbfirst, 0)
  assert_true(s1 && s2 && s3 && s4)
end

assert('SPI', 'open - no device') do
  Plato::SPI.register_device(nil)
  assert_raise(RuntimeError) {Plato::SPI.open(0)}
end
