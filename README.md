# Ruby buildpack for use in Stackato

A simple ruby buildpack to deploy Rails app in Stackato. Simply runs
`bundle install` to install dependencies instead of wget'ing each gem
in Gemfile.lock which is what the CloudFoundry plugin does, among
other complicated things.
