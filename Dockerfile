FROM ruby:2.6.4-slim
RUN gem install sinatra sequel rubyzip
ADD ./pass_server /app
RUN gem install /app/sign_pass-1.0.1.gem
EXPOSE 80/tcp
ENTRYPOINT cd app && rackup -p 80 -o 0.0.0.0 
