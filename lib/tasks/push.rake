namespace :push_line do 
  desc "LINEBOT:ゴミ出しの通知" 
  task push_line_message_trash: :environment do
      trash_day = TrashDay.new
      message = {
          type: 'text',
          text: trash_day.text
      }
    #   puts ENV["LINE_CHANNEL_TOKEN"]
      client = Line::Bot::Client.new { |config|
          config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
          config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
      }
      User.all.each do |user|
          client.push_message(user.uid, message)
      end
  end
end