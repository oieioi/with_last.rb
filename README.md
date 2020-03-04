[![Gem Version](https://badge.fury.io/rb/with_last.svg)](https://badge.fury.io/rb/with_last)
![Ruby](https://github.com/oieioi/with_last.rb/workflows/Ruby/badge.svg)

# with_last.rb

- Add `with_last` method to `Enumerator` class.
- Add `last?` method to `Enumerator` class.
- Add `each_with_last` to `Enumerable` module.

## Installation

```ruby
gem 'with_last'
```

And then execute:

    $ bundle install

## Usage

### `Enumerable#each_with_last`

```ruby
[1,2,3].each_with_last { |item, last|
  print "#{item}#{last ? '!' : ' => '}"
}
```

it prints `1 => 2 => 3!`

### `Enumerator#with_last`

```ruby

[1,2,3]
  .map
  .with_last { |item, last| "#{item * item}#{last ? '.' : ''}" }
  .join(',')
```

it returns `"1,4,9."`

### `Enumerator#last?`

```ruby
e = [1,2].to_enum
e.last? # => false
e.next  # => 1
e.last? # => false
e.next  # => 2
e.last? # => true
```

### in ERB

```erb
<% %w[hoge fuga piyo].each_with_last do |item, is_last| %>
  <%= item %><%= is_last ? '.' : ', ' %>
<% end %>
```

it renders;

```html
hoge, fuga, piyo.
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
