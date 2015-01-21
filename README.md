# has_default_value

[![Build Status](https://travis-ci.org/kami30k/has_default_value.svg)](https://travis-ci.org/kami30k/has_default_value)
[![Gem Version](https://badge.fury.io/rb/has_default_value.svg)](http://badge.fury.io/rb/has_default_value)

has_default_value sets default value to Rails application's ActiveRecord model **without saved**.

The default value set with I18n.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'has_default_value'
```

And then execute:

```
$ bundle
```

## Usage

In `app/models/user.rb`:

```ruby
class User < ActiveRecord::Base
  has_default_value :name
end
```

In `config/locales/en.yml`:

```yaml
en:
  activerecord:
    defaults:
      user:
        name: no name
```

Then application behaves as follows:

```
$ bin/rails c
> user = User.create
>
> user.name #=> "no name"
> user.read_attribute(:name) #=> nil
>
> user.name = 'user name'
> user.name #=> "user name"
```

That's it.

If you want to set multiple default values, you can write as follows:

```ruby
class User < ActiveRecord::Base
  has_default_value :name, :email, :address, ...
end
```

## Contributing

1. Fork it ( https://github.com/kami30k/has_default_value/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
