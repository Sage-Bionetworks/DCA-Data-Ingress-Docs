FROM ubuntu:20.04
RUN apt update
RUN apt install -y ruby-full
RUN apt-get install -y build-essential zlib1g-dev
RUN gem install jekyll bundler

COPY . /usr/src/app

EXPOSE 4000
RUN ruby --version
RUN gem --version
WORKDIR /usr/src/app
RUN ls /usr/src/app
RUN bundle install 

CMD ["bundle", "exec", "jekyll", "serve", "--livereload", "--host", "0.0.0.0", "-P", "4000"]