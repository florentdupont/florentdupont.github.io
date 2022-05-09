from jekyll/jekyll

RUN apk add python3
RUN apk add graphviz

COPY Gemfile .

RUN jekyll build