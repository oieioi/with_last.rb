# with_last.rb

Add `each_with_last` to `Array`.

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
  puts 'to be continued' unless is_last
}
```


```erb
<% some_list.each_with_last do |item, is_last| %>
  <%= item %><%= is_last ? '.' : ',' %>
<% end %>
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
