class AlertChannel < ApplicationCable::Channel
  def subscribed
     stream_from "alerts"
  end

  def unsubscribed
  puts "unsub"
   x = Feed.find(params[:id])
   x.unsubscribe()
  end
end
