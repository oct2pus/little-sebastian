# Lil Sebastian
Lil Seb is a mod-log/moderation bot for discord split from [Jadebot](https://github.com/oct2pus/Jadebot) because I wanted to focus on her fun aspects and very few servers besides my own use these features.

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
