# google_drive_alias

google_drive gem enhancement.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google_drive_alias', :git => 'https://github.com/sumipan/google_drive_alias.rb.git', :branch => 'master'
```

And then execute:

    $ bundle

## Usage

Row access with alias name. Frst row is header definition.

id | name
---|---------
1  | my name

```ruby
populated_rows = worksheet.populated_rows

row = populated_rows.first
row.id # '1'
row.name # 'my name'
row.name = 'your name'

row = worksheet.append_row # new row
row.id   = 2
row.name = 'new name'

worksheet.save
```

Header info

```ruby
worksheet.header
# => ['id', 'name']
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/google_drive_alias/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
