# Use the official Ruby image as the base image
FROM ruby:3.3.1

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install dependencies
RUN apt-get update && \
    apt-get install -y nodejs && \
    gem install bundler

# Copy Gemfile and Gemfile.lock to the working directory
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Expose port 3000 to the outside world
EXPOSE 3000