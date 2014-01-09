# Snippetshare

By [Phil Worthington](https://github.com/philworthington).


## Description
A snippet sharing app built in Rails 4 using Resque and Redis to handle the background jobs of syntax highlighting from an external source.

In Gemfile:
> gem 'resque', :require => 'resque/server'

In Terminal:
> redis-server /usr/local/etc/redis.conf
<br />
> rake resque:work QUEUE="*"


## Authors

* Phil Worthington (https://github.com/philworthington)


## License

MIT: http://philworthington.mit-license.org

