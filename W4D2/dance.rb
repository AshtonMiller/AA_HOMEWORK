class Dance
    attr_reader :style

    def initialize(style = "Tap")
      @style = style
    end
  end

  class Ballet < Dance
    def initialize(technique)
      @technique = technique
      super("Ballet")
    end
  end

  class Swing < Dance
    def initialize(form)
      @form = form
      super
    end
  end

#   bolshoi = Ballet.new("Vaganova")
#   west_coast_swing = Swing.new("West Coast")