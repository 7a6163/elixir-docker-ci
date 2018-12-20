FROM elixir:1.7-alpine

RUN \
    apk update && \
    apk --no-cache --update add \
        bash openssh-client make git ncurses ncurses-libs nodejs yarn

ENV TERM=xterm

RUN mix local.hex --force && \
    mix local.rebar --force
