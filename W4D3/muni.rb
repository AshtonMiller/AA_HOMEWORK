class Municipality
    attr_reader :state

    def initialize(state = "California")
      @state = state
    end
  end

  class City < Municipality
    def initialize(name, state)
      @name = name
      super(state)
    end
  end

  class Town < Municipality
    def initialize(population)
      @population = population
      super
    end
  end

  class County < Municipality
    def change_state(new_state)
      self.state = new_state
    end
  end

  nyc = City.new("New York City", "New York")
  oaktown = Town.new(500000)
  marin = County.new