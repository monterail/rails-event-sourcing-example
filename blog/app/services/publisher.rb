class Publisher
  def self.publish(event, message = {})
    x = channel.fanout(event)
    x.publish(message.to_json)
  end

  def self.channel
    @channel ||= connection.create_channel
  end

  def self.connection
    @connection ||= Bunny.new.tap do |c|
      c.start
    end
  end
end
