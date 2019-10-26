# Jekyll::Livescript

A LiveScript converter for Jekyll.

Based off, and automatically converted from [`jekyll-coffeescript`](https://github.com/jekyll/jekyll-coffeescript).

[![Build Status](https://travis-ci.org/jekyll/jekyll-livescript.svg?branch=master)](https://travis-ci.org/jekyll/jekyll-livescript)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-livescript'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install jekyll-livescript
```

**Notes: `jekyll-livescript` requires Ruby 2.4 or greater. Additionally, the dependency on `execjs` means you must also have a [valid JavaScript runtime](https://github.com/rails/execjs#execjs) available to your project**

You also need to add this plugin to your `_config.yml` file:

```
plugins:
  - jekyll-livescript
```

## Usage

In your Jekyll site, create LiveScript files that start with the following
lines:

```
---
---
```

You need those three dashes in order for Jekyll to recognize it as
"convertible". They won't be included in the content passed to the LiveScript
compiler.

## Contributing

1. Fork it (`http://github.com/AtlasJan/jekyll-livescript/fork`)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
