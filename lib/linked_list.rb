require 'node'

class LinkedList
  attr_accessor :head

  def initialize(data)
    @head = Node.new(data, nil)
  end
    
  def add(data)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(data, nil)
    self 
  end

  def self.remove_middle(list)
    return nil  if list.nil?
    return nil  unless list.respond_to? :head
    return list if list.head.next.nil?
    
    fast_ptr = list.head
    slow_ptr = list.head

    while (true) do
      # advance fast pointer
      fast_ptr = fast_ptr.next

      # check to see if size is even
      if fast_ptr.next.nil? then break end
      fast_ptr = fast_ptr.next

      if fast_ptr.next.nil? 
        # remove the element after the slow pointer from the list
        slow_ptr.next = slow_ptr.next.next
        break
      end 

      # advance slow pointer
      slow_ptr = slow_ptr.next      
    end
    list
  end

  def to_array
    arr = Array.new
    current = @head
    arr << current.data
    until current.next.nil? do
      current = current.next
      arr << current.data
    end
    arr
  end
end
