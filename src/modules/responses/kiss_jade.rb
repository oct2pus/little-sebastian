#if someone uses a :kissjade: emoji, she responds with these two emojis

module Bot::Responses
    module Kiss_Jade
        extend Discordrb::EventContainer
        message(contains: /<:kissjade/) do |event|
            event.send_message(":flushed::two_hearts:")
        end
    end
end
