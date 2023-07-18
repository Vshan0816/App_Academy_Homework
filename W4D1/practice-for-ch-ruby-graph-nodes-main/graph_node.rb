require_relative "set.rb"
class GraphNode
  attr_accessor :value, :neighbors

  def initialize(value)
    @value = value
    @neighbors = []
  end
end

def bfs(starting_node, target_value)
  queue = [starting_node]
  visited = Set.new()

  until queue.empty?
    current_node = queue.shift
    return current_node if current_node.value == target_value

    current_node.neighbors.each do |neighbor|
      unless visited.include?(neighbor)
        queue << neighbor
        visited.add(neighbor)
      end
    end
  end

  nil
end
