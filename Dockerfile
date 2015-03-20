FROM ruby:2.2.1
RUN apt-get update -yqq
RUN gem install sinatra
EXPOSE 4567
CMD ["/usr/local/bin/ruby", "/shared/service.rb"]
