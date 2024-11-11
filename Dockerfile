# Use a Ruby base image
FROM ruby:3.2-slim

# Install dependencies for Sinatra and the app
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# Set the working directory inside the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock /app/

# Install dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . /app

# Expose the port the app will run on
EXPOSE 4567

# Run the app using the Sinatra framework
CMD ["ruby", "app.rb", "-p", "4567"]

