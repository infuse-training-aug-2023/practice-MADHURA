FROM ruby:latest
COPY . /app
WORKDIR /app
RUN gem install json
RUN gem install faker
ENV COUNTRY="United States"
CMD ["ruby", "2.rb", "4", "fake_data.json"]