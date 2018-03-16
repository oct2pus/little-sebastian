module Bot
  module Events
    # event logs a server member changing their name and displays it in the mod
    # log
    module MemberNameUpdate
      extend Discordrb::EventContainer
      member_update do |event|
        # Store a Users Display Name, log it if different
        redis = Redis.new

        if redis.exists("#{event.server.id}:#{event.user.id}:NAME")
          user_nickname = redis.get("#{event.server.id}:#{event.user.id}:NAME")

          if user_nickname != event.user.display_name
            mod_log = event.server.text_channels.find { |c| c.name == 'mod-log' }
            mod_log = event.server.create_channel('mod-log') if mod_log.nil?

            if Bot::JADE.profile.on(event.server).permission?(:send_messages, mod_log)
              mod_log.send_embed do |embed|
                embed.title = 'A User Changed Their Nickname'
                embed.description = "**#{event.user.username}##{event.user.tag}** has changed their nickname."
                embed.timestamp = Time.now
                embed.color = '#FAAF55'
                embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: "#{event.user.username}##{event.user.tag}", icon_url: event.user.avatar_url.to_s)
                embed.add_field(name: 'Previous Nickname', value: user_nickname) # .to_s)
                embed.add_field(name: 'New Nickname', value: event.user.display_name) # .to_s)
              end
            end
          end
          redis.set "#{event.server.id}:#{event.user.id}:NAME", event.user.display_name

          redis.close
        end
      end
    end
  end
end
