class Chopper
  def chop(position, array)
    return array.index(position) unless array.empty?
    return -1 if array.empty?
  end

  def sum(array)
    'vacio' if array.empty?
  end
end
