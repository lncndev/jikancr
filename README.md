# jikancr
Crystal wrapper for the unofficial MAL API Jikan

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     jikancr:
       github: onoderaproject/jikancr
   ```

2. Run `shards install`

## Usage

```crystal
require "jikancr"

Jikan.anime("<ID HERE>")["title"]
```

## Contributing

1. Fork it (<https://github.com/onoderaproject/jikancr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [lncndev](https://gitlab.com/lncn) - creator and maintainer
