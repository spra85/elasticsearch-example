# ElasticSearch Examples

## Setup

Install some applications with Homebrew:

```
brew install redis
brew install postgresql
brew install elasticsearch

```

Grab a database.yml:

```
cp config/database.yml.sample config/database.yml
```

Get a Procfile:

```
cp Procfile.local.sample Procfile.local
```

Set up the database:

```
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

Set up an environment:

```
cp .env.sample .env
```

Run foreman:

```
bundle exec foreman start -f Procfile.local
```

Need a setting that isn't "standard"? Just create a `config/application.local.yml` file and define the overrides you need.
