class Player

  attr_accessor :name, :HP

  DEFAULT_HP = 60

  def initialize(name)
    @name = name
    @HP = DEFAULT_HP
  end

end
