
# Dogell

Dogell let's you run commands on multiple servers querying by your host tags in your Datadog Infrastructure


## Installation

Run this command:

```bash
gem install net-ssh-multi && curl -s https://raw.githubusercontent.com/catks/dogell/master/dogell > /usr/local/bin/dogell && chmod +x /usr/local/bin/dogell
```

## Usage

To start using dogell you need a Datadog `API_KEY` and `APP_KEY`, after that you can set the keys as environment variables:

```bash
export DATADOG_APP_KEY=my_secret_app_key
export DATADOG_API_KEY=my_secret_api_key
```

Or set with the dogell options in each command:

```bash
dogell -t name:some-app -u my_user -c 'hostname' --api-key my_secret_api_key --app-key my_secret_app_key
```
Dogell use Datadog host tags to query the servers with the `-t`/ `--tag` flags, to know more just type `dogell -h`

## TODO

 1. Transform this project into a gem
 2. Separate concerns

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/catks/dogell

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
