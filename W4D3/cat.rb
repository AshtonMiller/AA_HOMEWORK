class Cat
  private
  def meow
    puts "meow now brown cow"
  end
end

cat = Cat.new
cat.send(:meow) # => prints meow!