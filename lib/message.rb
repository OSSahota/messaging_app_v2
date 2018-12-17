class Message
  attr_reader :text, :time

  def initialize(text)
    @text = text
    @time = Time.now
  end
end
