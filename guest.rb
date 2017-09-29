class Guest

attr_reader :name, :favourite

def initialize(name, favourite)
  @name = name
  @favourite = favourite
end

def shout()
  return "Wooo! Rock and roll!"
end

end
