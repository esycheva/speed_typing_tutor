FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Create a new directory
RUN mkdir /speed_typing_tutor

# Set the working directory to /speed_typing_tutor
WORKDIR /speed_typing_tutor

ADD Gemfile /speed_typing_tutor
ADD Gemfile.lock /speed_typing_tutor/Gemfile.lock
RUN bundle install

# Copy the current directory contents into the container at /speed_typing_tutor
ADD . /speed_typing_tutor
