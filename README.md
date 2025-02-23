<p align="center">
  <img src=".github/woot-logo.svg" alt="Woo-logo" width="240">
  <div align="center">Opensource alternative to Intercom, Zendesk, Drift, Crisp etc.</div>
</p>

___

![CircleCI Badge](https://img.shields.io/circleci/build/github/chatwoot/chatwoot)
![License](https://img.shields.io/github/license/chatwoot/chatwoot)
[![Maintainability](https://api.codeclimate.com/v1/badges/80f9e1a7c72d186289ad/maintainability)](https://codeclimate.com/github/chatwoot/chatwoot/maintainability)
![Commits-per-month](https://img.shields.io/github/commit-activity/m/chatwoot/chatwoot)

![ChatUI progess](./.github/dashboard-screen.png)

## Quick Setup

### Install JS dependencies

``` bash
yarn install
```

### Install ImageMagik

```bash
brew install imagemagick
```

### Setup rails server

```bash
# install ruby dependencies
bundle

# copy config & update the values in database and application ymls accordingly
# ref docs for detailed instructions
cp shared/config/database.yml config/database.yml
cp shared/config/application.yml config/application.yml

# copy frontend env file
cp .env.sample .env

# run db migrations
bundle exec rake db:create
bundle exec rake db:reset

# fireup the server
foreman start -f Procfile.dev
```

### Login with credentials

```bash
http://localhost:3000
user name: john@acme.inc
password: 123456
```

## Detailed documentation

Detailed documentation is available at [www.chatwoot.com/docs](https://www.chatwoot.com/docs)

## Contributors ✨

Thanks goes to all these [wonderful people](https://www.chatwoot.com/docs/contributors):

*Chatwoot* &copy; 2017-2019, ThoughtWoot Inc - Released under the MIT License.
