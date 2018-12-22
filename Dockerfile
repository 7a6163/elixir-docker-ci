FROM elixir:1.7-alpine

RUN \
    apk update && \
    apk --no-cache --update add \
        bash build-base openssh-client git ncurses nodejs procps yarn

ENV TERM=xterm

RUN mix local.hex --force && \
    mix local.rebar --force
