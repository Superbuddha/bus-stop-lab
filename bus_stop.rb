class BusStop

  # should I put :queue in the attribute reader?
  attr_reader :name

def initialize(name)
  @name = name
  @queue = []
end

def queue_count
  return @queue.count()
end

def add_passenger(person)
  @queue.push(person)
end

def clear_queue()
  @queue.clear
end

end
