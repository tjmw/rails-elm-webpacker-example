# Rails 5.1 Example App with Webpacker and Elm running on Heroku

## What is this?

This is an example [Rails] 5.1 app with [Elm] on the front-end handled by
[Webpacker], running on [Heroku].

[Rails]: http://rubyonrails.org
[Elm]: http://elm-lang.org/
[Webpacker]: https://github.com/rails/webpacker
[Heroku]: https://www.heroku.com/

## Deploying to Heroku

To deploy to Heroku, create a Heroku app, configure the buildpacks and push:

```
$ heroku git:remote -a <Heroku app name>
$ heroku buildpacks:add heroku/nodejs
$ heroku buildpacks:add heroku/ruby
$ git push heroku master
```

## Running Locally

```
$ bundle
$ yarn install
$ foreman start
```

Now you can visit [`localhost:5000`](http://localhost:5000) from your browser.
