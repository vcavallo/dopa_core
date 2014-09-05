# DopaCore engine

## To install this engine...
- clone the repo and move it into an `/engines/` folder in the top-level
of your app.
- add the engine to your `Gemfile`:
    ```ruby
    gem 'dopa_core', path: "/engines/dopa_core"
    ```

- in `routes.rb`, determine where to mount the app *(TBD. this only applies if it has its own routes/controllers/views,etc.)*:
    ```ruby
    mount DopaCore::Engine, at: "/some-place"
    ```

- copy the engine's migrations into your app:
    ```bash
    $ rake railties:install:migrations
    ```

- then: `$ rake db:migrate`
- create a `config/initializers/dopa_core.rb` and do this:
    ```ruby
    DopaCore.player_class = "User"
    ```  
    where you replace `"User"` with your application's equivalent

----------

##Work In Progress!

*If you've somehow come to this and are - even worse - trying to use it, expect nothing. Be afraid. I don't know what any of this does yet.*
