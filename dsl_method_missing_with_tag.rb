class HTMLDocument
  def initialize(&block)
    instance_exec(&block)
  end

  private

  def method_missing(method_name, *args, &block)

  end
end
