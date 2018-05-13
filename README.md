# Lil Seb
Lil Seb is a mod-log/moderation bot for discord split from [Jadebot](https://github.com/oct2pus/Jadebot) because I wanted to focus on her fun aspects ~~and very few servers besides my own use these features.~~ **Lil Seb has been taken offline and this code archive is left here for historical purposes.** Lil Seb had some of the earliest functions I've written in ruby (none of the functions interact with each other or feature any sort of actual code reuse, so its a lot of cut-and-paste work) and userbase wasn't growing nor was I really interested in maintaining two bots. Maybe one day I'll revisit Lil' Seb, but if I did I would expect a full rewrite rather than a modification. Still, if you'd like to host your own Lil' Seb, I'll absolutely help you if you ask me on the discord below. 

### Goals
- Improve >clear
- Improve Role Monitoring
- \>massban and \>masskick

### Discuss
please join us at <https://discord.gg/D3vJQQF>!

### Running it yourself

First enter the bin directory and then rename config.rb.example to config.rb, put in your Discord bot token and id in the corresonding variables. After that return to the root folder and perform `bundle install` or manually install each gem using `gem install` that are listed in the gemfile. Ensure you have a redis database currently running. To install Redis perform
`
sudo apt install redis-server
`
and then run
`
sudo systemctl start redis-server
`
you can then finally run
`
ruby run.rb
`
from within the root folder.
