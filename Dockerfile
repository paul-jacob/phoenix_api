FROM elixir:1.7.2
COPY . /app
WORKDIR /app
RUN mix local.hex --force && \
    mix deps.get
CMD ["mix", "phx.server"]