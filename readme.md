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


----------

rspec results as of 2014-09-23:

```rspec

DopaCore::PlayerAction
  Associations
    belongs to an Action
    belongs to a Player

DopaCore::Action
  Associations
    belongs to an ActionType
  Attributes
    has a trigger (PENDING: how will this work?)
    has a name
    has a point_value
    has a progress_value

DopaCore::Challenge
  add some examples to (or delete) /Users/vinney/development/projects/clients/dopamine/engines/dopa_core/spec/models/dopa_core/challenge_spec.rb (PENDING: No reason given)

DopaCore::ActionType
  Associations
    belongs to a Challenge
  Attributes
    has a category
    has a name

DopaCore::Challenge
  Attributes
    has required_progress_points
    has a name

DopaCore::Player
  Associations
    has an Action
  Attributes
    has a name

Pending:
  DopaCore::Action Attributes has a trigger
    # how will this work?
    # ./spec/models/dopa_core/action_spec.rb:21
  DopaCore::Challenge add some examples to (or delete) /Users/vinney/development/projects/clients/dopamine/engines/dopa_core/spec/models/dopa_core/challenge_spec.rb
    # No reason given
    # ./spec/models/dopa_core/challenge_spec.rb:5

Finished in 0.21324 seconds
15 examples, 0 failures, 2 pending

```

