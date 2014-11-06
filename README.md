# SinatraMdb

We are holding a party! You know how parties are at Ironhack so expect no snacks here. In our case we will hold a movie party but fear not, we are not watching "Elvira, mistress of the dark" again. We are building a simple game for movie lovers.

## Setup

```bash
git clone git@github.com:oriolgual/sinatra_mdb.git
```

And then execute:

    $ bundle install

## Usage

To start the application execute:

    $ foreman start
    
Or directly with `rackup`:

    $ rackup config.ru
    
## Tests

We're using `rspec` to test our application. To run the whole test suite:

    $ bundle exec rake

or:

    $ bundle exec rspec spec/
    
If you want to run an individual spec:

    $ bundle exec rspec spec/lib/sinatra_mdb/web_spec.rb
    
You can even run a single example in a spec file, by specifing its line:

    $ bundle exec rspec spec/lib/sinatra_mdb/web_spec.rb:9

## Deploying to Heroku

Deploying to Heroku is really easy:

    $ heroku login (enter your credentials)
    $ heroku create
    $ git push heroku master
    
Then just visit the URL printed by `heroku create` or just run `heroku open`. You can visit an example of this application [here](https://whispering-scrubland-9741.herokuapp.com/)
