FROM elixir:1.7-alpine

RUN \
    apk update && \
    apk --no-cache --update add \
        bash openssh-client make git ncurses-libs nodejs yarn

RUN mix local.hex --force && \
    mix local.rebar --force
