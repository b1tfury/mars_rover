class Plateau

  def initialize(limits = nil)
    @limits = limits
  end
  def limits
    if @limits == nil
      raise "upper limits are not given for plateau"
    else
      @limits
    end
  end
end
