# AtCoderQAHub

Represents a Q&amp;A board for AtCoder users.

## Description

It is an unoffical bulletin board of [AtCoder](https://atcoder.jp/). Contestants can easily ask questions and answers.

*** DEMO ***

Comming soon.

## Features

- View AtCoder's contest problem list
- Ask a question for problems
- Answer these problems
- Vote for answers (Use a gem called [Acts As Votable](https://github.com/ryanto/acts_as_votable))

## Requirement

- Ruby 2.6+
- Ruby on Rails 5.2+
- RSpec
- MySQL 8.0.16
- Docker Desktop 19.03+

### Optional

- [fish](https://fishshell.com/)
- [fisher](https://github.com/jorgebucaran/fisher)

## Usage

1. Choose a problem and click "Open ▶︎" button on the right
2. Choose a question from the list, click its link
3. If you are logged in, you can ask a question and answer the question

## Installation

Paste the following commands at a Terminal prompt.

```terminal
$ git clone git@github.com:KATO-Hiro/AtCoderQAHub.git
```

## Getting started

```terminal
# Build Dockerfile
$ docker-compose build

# Create and migrate DB
docker-compose run web rails db:create
docker-compose run web rails db:migrate

# Run docker container
$ docker-compose up -d

# Run a command (ex: View rails version)
$ docker-compose run web rails --version

# Restart docker container
$ docker-compose restart

# Run RSpec
$ docker-compose exec web bin/rspec

## Note:
if "exec: \"bin/rspec\": permission denied":
$ docker-compose exec web bash
$ chmod +x bin/rspec

# Stop docker container
$ docker-compose down
```

### For fish shell user

```terminal
# Run the following command if needs.
$ cp .config/fish/functions/*.fish ~/.config/fish/functions/

# Usage
## See:
.config/fish/functions/docker_usage.fish
$ docker_usage

# Initial settings(build image and create and migrate database)
$ init

# Build Images
$ build

# Run docker container
$ start

# Run RSpec
$ run_rspec

## Note:
if "exec: \"bin/rspec\": permission denied":
$ docker-compose exec web bash
$ chmod +x bin/rspec

# Restart docker container
$ restart

# Stop docker container
$ stop
```

## Links

[AtCoder](https://atcoder.jp/)

[AtCoder Problems](https://kenkoooo.com/atcoder/#/table/)

[AtCoder Problems Information API](https://github.com/kenkoooo/AtCoderProblems)

[Readme Driven Development; RDD](https://qiita.com/b4b4r07/items/c80d53db9a0fd59086ec)

## Author

[@KATO-Hiro](https://twitter.com/k_hiro1818)

## License

[MIT](http://KATO-Hiro.mit-license.org)
