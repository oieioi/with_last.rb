[![Gem Version](https://badge.fury.io/rb/with_last.svg)](https://badge.fury.io/rb/with_last)
![Ruby](https://github.com/oieioi/with_last.rb/workflows/Ruby/badge.svg)

# with_last.rb

Add `with_last` method to `Enumerator` class and `each_with_last` to `Enumerable` module.

## Installation

```ruby
gem 'with_last'
```

And then execute:

    $ bundle install

## Usage

```ruby
[1,2,3].each_with_last { |item, last|
  print item
  print last ? 'done!' : '->'
}

# "1->2->3done!"

[1,2,3].map.with_last { |item, last| "#{item * item}#{last ? '.' : ''}" }.join(',')

# => "1,4,9."
```

```erb
<% %w[hoge fuga piyo].each_with_last do |item, is_last| %>
  <%= item %><%= is_last ? '.' : ', ' %>
<% end %>

<!--
hoge, fuga, piyo.
-->
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
