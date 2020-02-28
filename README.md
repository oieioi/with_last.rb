[![Gem Version](https://badge.fury.io/rb/with_last.svg)](https://badge.fury.io/rb/with_last)

# with_last.rb

- Add `each_with_last` to `Array`.
- (wip) Add `with_last` to `Enumerable`.

## Installation

```ruby
gem 'with_last'
```

And then execute:

    $ bundle install

## Usage

```ruby
[1,2,3,4,5,6].each_with_last { |item, is_last|
  puts item
  puts is_last ? 'done' : 'to be continued'
}
```


```erb
<% some_list.each_with_last do |item, is_last| %>
  <%= item %><%= is_last ? '.' : ',' %>
<% end %>
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
