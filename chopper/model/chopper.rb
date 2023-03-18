class Chopper
  def chop(position, array) # rubocop:disable Lint/UnusedMethodArgument
    if array.empty?
      -1
    else
      array.index(position)
    end
  end
end
