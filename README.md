# HigherOrderFunctions
高階関数
## Installation
Add this line to your application's Gemfile:
```rb
gem 'higher_order_functions'
```
And then execute:
```console
$ bundle install
```
Or install it yourself as:
```console
$ gem install higher_order_functions
```
## Usage
```rb
require 'higher_order_functions'
using HigerOrderFunctions
3.unfold(proc { |x| x.zero? }, proc { |x| x }) { |n| n - 1 } # [3, 2, 1]
1.sequence { |x| x + 2 }.take(10) # [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].scan { |result, item| result + item } # [1, 3, 6, 10, 15, 21, 28, 36, 45, 55]
[1, 2, 3].inject_right { |result, item| item + result } # 6
```
## Development
After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).
## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/tommy-ish/higher_order_functions. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/tommy-ish/higher_order_functions/blob/master/CODE_OF_CONDUCT.md).
## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
## Code of Conduct
Everyone interacting in the HigherOrderFunctions project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tommy-ish/higher_order_functions/blob/master/CODE_OF_CONDUCT.md).
