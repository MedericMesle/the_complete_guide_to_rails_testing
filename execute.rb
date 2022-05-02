class Tag
  def execute1(&block)
    block.call
  end

  def execute2(&block)
    instance_exec(&block)
  end
end

puts "Current context is #{self}"
Tag.new.execute1 { puts "Current context is #{self}" }
Tag.new.execute2 { puts "Current context is #{self}" }
