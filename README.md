## Local Testing

### Use Docker
1. Install Docker and `docker-compose`.

2. Run `docker compose up -d` from within repository to launch Jekyll Docker container.

3. Access the local preview of the documentation at http://127.0.0.1:4000.

### Manually install Jekyll 
1. Follow the documentation [here](https://jekyllrb.com/docs/installation/macos/) to install Ruby 
2. Check the version of ruby by running `ruby -v`. You version of `ruby` should be 3.1.2 and above
3. Install Jekyll by running `gem install jekyll`.
4. (Optional) Follow the quick start instructions [here](https://jekyllrb.com/) on Jekyll's website. You should be able to access the local preview of the documentation at `localhost:4000`
5. Install `just-the-docs/just-the-docs` and plugin `jekyll-remote-theme` by doing `bundle install` for the first time. (Note: if you change your plugin and remote theme, you might need to run `bundle install again`)
6. Run `bundle exec jekyll serve`. Then, you should be able to access the local preview of the documentation at http://127.0.0.1:4000.


