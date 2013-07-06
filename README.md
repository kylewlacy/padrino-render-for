Padrino-Render-For
===============
This is a dead-simple gem for those fed up with having to be redundant with a controller name in Padrino.

Installation
-------------
Add the following to your `Gemfile`:

    gem 'padrino-render-for'

`bundle install`, and add the following to your `app/app.rb` file:

    include Padrino::RenderFor

Done.

Usage
-----
Let's start with a simple controller (this example builds off the prior example from [`padrino-relative`](https://github.com/kylewlacy/padrino-relative))

    MyApp.controller :users do
        get :sign_up, '/sign_up' do
          render_action
        end

        get :sign_in, '/sign_in' do
          render_action
        end

        get :list, '/' do
          render_for :all
        end

        get :show, ':id' do
          render_for :display
        end
    end

Now, Padrino will look for the views `app/views/users/sign_up`, `app/views/users/sign_in`, `app/views/users/all`, and `app/views/users/display` (with whatever extension you use, such as `.haml` or `.slim`) respectively.

If you'd like, you can also pass in locals and options like you normally would, you can do `render_for :action, :locals => {:foo => 'bar'}`, since `render_action` is essentially an alias for `render_for :action` (If you'd like to render `app/views/users/action`, you can do `render_for 'action'`, if such a thing were to ever come up)