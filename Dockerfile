FROM ruby:3.1.3

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN mkdir /unipaas
WORKDIR /unipaas
ADD Gemfile /unipaas/Gemfile
# COPY Gemfile.lock /unipaas/Gemfile.lock
RUN bundle install
#COPY . /unipaas

ADD entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]