class MyClass
   private
   def private_thing
      puts "Hello World"
   end

   public
   def explicit_receiver
      self.private_thing
   end

   def implicit_receiver
      private_thing
   end
end

class MyOtherClass < MyClass
   def implicitly_inherited
      private_thing
   end
end