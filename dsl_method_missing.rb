class HTMLDocument
  def initialize(&block)
    instance_exec(&block)
  end

  private

  def method_missing(method_name, *args, &block)
    puts "<#{method_name}>"
    block.call
    puts "</#{method_name}"
  end
end


HTMLDocument.new do
  html do
    body do
      puts "Hello world"
    end
  end
end
