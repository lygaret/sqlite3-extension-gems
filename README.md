# Sqlite3::Ext::Closure

The `closure.c` sqlite extension (vendored, originally from SQLite source), 
packaged such that it can be installed and used by `bundler` for ruby.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add `sqlite3-ext-closure`

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install `sqlite3-ext-closure`

## Usage

```ruby
require 'sqlite3'
require 'sqlite3-ext-closure'

d = SQLite3::Database.new 
d.enable_load_extension
d.load_extension SQLite3::Ext::Closure::EXTENSION

d.execute <<~SQL
  CREATE VIRTUAL TABLE ct1 USING transitive_closure (
  -- ...
SQL
```

## License

- The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
- The original extension is available from the SQLite repo, with all copyright disclaimed.

