_DEPRECATED_

# Ruby buildpack for use in Stackato

A simple ruby [buildpack](http://docs.stackato.com/deploy/buildpack.html) to deploy Rails app in Stackato. Simply runs
`bundle install` to install dependencies instead of wget'ing each gem
in Gemfile.lock which is what the CloudFoundry plugin does, among
other complicated things. Also patches `database.yml` with the bound 
service (mysql or postgres) information.

## Example stackato.yml

```
name: myapp

env:
 BUILDPACK_URL: git://github.com/ActiveState/stackato-buildpack-ruby.git

processes:
 web: bundle exec rails server

services:
 mysql: myapp-db
 # for staging cache
 myapp-cache: filesystem

mem: 512
```
