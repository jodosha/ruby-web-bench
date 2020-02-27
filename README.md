# Ruby web frameworks benchmark

It measures the number of request per second for the most popular Ruby web frameworks.

## Apps

For each framework, in `apps/` directory, you will find an app with just 1 route (e.g. `apps/hanami-api-1.ru`), and an app with 10,000 routes (e.g. `apps/hanami-api-10000.ru`).

The endpoint to hit to run the benchmark is `http://localhost:9292/` for the app with 1 route and `http://localhost:9292/j/j/j/j` for the app with 10,000 routes.
In the last case, the idea is to hit the 10,000th route to measure the _worst case scenario_.

Apps are generated using [jeremyevans/r10k](https://github.com/jeremyevans/r10k).

## Requirements

  * Ruby 2.7
  * `wrk` HTTP benchmark tool
  * `puma` Ruby gem

Please note that this repository does **not** contain a `Gemfile` on purpose, because I don't want to maintain this project each time a new version of a framework is released. This also removes from me the burden of solving gem dependency conflicts between frameworks.

This means that you need to **manually install the gem for the framework you want to test**.

## Usage

  1. Clone this repository
  3. Start an app with `puma -w 2 apps/hanami-api-1.ru` (or `puma -w 2 apps/hanami-api-10000.ru`)
  4. Run the benchmark `wrk -t 2 http://localhost:9292/` (or `wrk -t 2 http://localhost:9292/j/j/j/j`)

Please note that `localhost:9292` is subject to change, according to your Puma config.
