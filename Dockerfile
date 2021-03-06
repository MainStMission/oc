# Dockerfile

FROM phusion/passenger-ruby22:0.9.17

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Expose Nginx HTTP service
EXPOSE 80

# Start Nginx / Passenger
RUN rm -f /etc/service/nginx/down

# Remove the default site
RUN rm /etc/nginx/sites-enabled/default

# Add the nginx site and config
ADD nginx.conf /etc/nginx/sites-enabled/oc.conf
ADD rails-env.conf /etc/nginx/main.d/rails-env.conf

# Install bundle of gems
WORKDIR /tmp
ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/
RUN bundle install

# Add the Rails app
ADD . /home/app/oc
RUN chown -R app:app /home/app/oc


# Clean up APT and bundler when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



# FROM ruby:2.2.0

# RUN apt-get update -qq && apt-get install -y build-essential

# # for postgres
# RUN apt-get install -y libpq-dev

# # for nokogiri
# RUN apt-get install -y libxml2-dev libxslt1-dev

# # for capybara-webkit
# RUN apt-get install -y libqt4-webkit libqt4-dev xvfb

# # for a JS runtime
# RUN apt-get install -y nodejs

# ENV APP_HOME /myapp
# RUN mkdir $APP_HOME
# WORKDIR $APP_HOME

# ADD Gemfile* $APP_HOME/
# RUN bundle install



