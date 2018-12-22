FROM elixir:1.7-alpine

RUN \
    apk update && \
    apk --no-cache --update add \
        bash openssh-client git ncurses ncurses-libs nodejs yarn procps build-dependencies build-base gcc 

ENV TERM=xterm

RUN mix local.hex --force && \
    mix local.rebar --force
