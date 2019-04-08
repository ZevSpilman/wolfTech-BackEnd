class AlertChannel < ApplicationCable::Channel
  def subscribed
     stream_from "alerts"
  end

  def unsubscribed
  puts "hello world"
  end
end
