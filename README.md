# Project Name

Budget App

# Description the project.

This is a Ruby on Rails app that allows user to create, and list payements grouped by related categories that spent on. 

## Live Link
 [Live-demo](https://tranquil-crag-64773.herokuapp.com/users/sign_in)
## Built With

- Languages:
  _**Ruby**_
  _**Postgresql**_
- Frameworks: _**Ruby On Rails**_
- Technologies used: _**Visual Studio Code**_

### Requirements

In order to work on this project, you need to have the following dependencies installed:

- [Ruby](https://www.ruby-lang.org/en/)
- [Postgresql](https://www.postgresql.org/)
- [Node.js](https://nodejs.org/en/)
- [Yarn](https://yarnpkg.com/)
- [Rails](https://rubyonrails.org/)

## Getting Started

### Clone this repository

```bash
$ git clone git@github.com:hammaazarok/Budget-app.git
$ cd Budget-app
```

### Commands to run

Run

```bash
$ bundle install
```

To get all the gems required for the project

Then, run

```bash
$ npm install
```

To install packages such as style linters

To check linters locally, use

```bash
$ rubocop
$ npx stylelint "**/*.{css,scss}"
```

Once you have the project correctly set up, run

```bash
$ bin/rails db:setup
```

To run all migrations, create the database for testing and for development, and insert some data into the database for you to visualize the changes

Finally, each time you make changes to the project, run

```bash
$ bundle exec rspec /spec
```

In the root folder to check the consistency of the app. Please don't make changes to the tests unless completely necessary, and mention it in your PR description.

Important note: Since this project uses TailwindCSS for the styling, you need to run:

```bash
$ ./bin/dev
```

For you to see the styling being applied in the browser during development

## Authors

👤 **Hamma Azarok**

- GitHub: [@hammaazarok](https://github.com/hammaazarok)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- LazyCoders
- Coding Partners
- Inspiration
- etc

## 📝 License

This project is [MIT](./LICENSE) licensed.
