# [Salt & Pepper](http://saltpepper.ru) template
> for Ruby on Rails applications

## Features

* disabled test framework and Spring;
* chosen PostreSQL database;
* timezone is Moscow and application locale is :ru;
* disabled assets and helpers generators;
* cleared Gemfile from comments and unused gems;

## Usage

There are two easy ways to use it.

### Explicit way

run command:
```shell
rails new <application_name> --database postgresql --skip-test-unit --skip-spring -m https://raw.githubusercontent.com/sponomarev/snp-rails-template/master/default.rb
```

### Implicit way

or puth this code to your `~/.bashrc` or `~/.zshrc` file:

```shell
rails_new () {
  rails new $1 --database postgresql --skip-test-unit --skip-spring -m https://raw.githubusercontent.com/sponomarev/snp-rails-template/master/default.rb
}
```

Open new terminal session or reload your shell configuration with `source ~/.bashrc` or
`source ~/.zshrc`.

Now you can create new applications using:
```shell
rails_new <application_name>
```
