FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install -y ruby-dev build-essential 
RUN gem install sinatra sequel rubyzip rack json
ADD ./pass_server /app
RUN gem install /app/sign_pass-1.0.1.gem
EXPOSE 80/tcp
ENTRYPOINT cd app && rackup -p 80 -o 0.0.0.0 
