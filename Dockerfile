FROM ruby:3.1

# Set the working directory inside the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs

# Install Jekyll and bundler
RUN gem install jekyll bundler

# Copy the Gemfile and Gemfile.lock into the image
COPY Gemfile Gemfile.lock ./

# Install Jekyll dependencies
RUN bundle install

# Copy the rest of the application code into the image
COPY . .

# Expose the default Jekyll port
EXPOSE 4000