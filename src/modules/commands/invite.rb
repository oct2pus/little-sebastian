module Bot
  module Commands
    # command creates an invite link for jadebot for users to invite her to their discord servers
    module Invite
      extend Discordrb::Commands::CommandContainer
      command(:invite, description: "posts an invite to jadebot") do |event|
        event << '<https://discordapp.com/oauth2/authorize?client_id=404624723595493378&scope=bot&permissions=268790838>'
      end
    end
  end
end
