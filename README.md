# 1. Install vagrant and setup environment

## 1.1 Setup Vagrant

    $ cd .vagrant
    $ vagrant up
    
    $ vagrant ssh

## 1.2 Setup environment

    $ sudo apt-get update
    $ sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

## 1.3 Install RVM

    $ sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
    $ curl -L https://get.rvm.io | bash -s stable
    $ source ~/.rvm/scripts/rvm
    $ echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc

## 1.4 Install Ruby 2.1.2

    $ rvm install 2.1.2
    $ rvm use 2.1.2 --default
    $ ruby -v
    # tell Rubygems not to install the documentation for each package
    $ echo "gem: --no-ri --no-rdoc" > ~/.gemrc

## 1.5 Install NodeJS (to enable usage of coffeescript and Rails Asset Pipeline)

    $ sudo add-apt-repository ppa:chris-lea/node.js
    $ sudo apt-get update
    $ sudo apt-get install nodejs

## 1.6 Install Rails

    $ gem install rails

## 1.7 Install MySQL

    $ sudo apt-get install mysql-server mysql-client libmysqlclient-dev

# 2. Create App

## 2.1 Generate Rails Structure

    $ rails new music-collection -d mysql
    $ cd music-collection
    # edit config/database.yml to setup database
    $ rake db:create db:migrate
    $ rake db:create db:migrate RAILS_ENV=test
    $ rails s

## 2.2 Install Rspec

    # edit Gemfile
    $ bundle
    $ rails generate rspec:install

## 2.2.1 Install simplecov

Simplecov generates test coverage reports. Very usefull if you want to make sure your code has a good coverage.

Visit https://github.com/colszowka/simplecov

## 2.3 Generate Scaffolds

    $ rails g scaffold Album title:string description:text cover:string released:date artist:string genre:string

    $  rails g scaffold Artist name:string country:string picture:string

    $ rails g migration AddArtistReferenceToAlbum

    $ rake db:migrate
    $ rake db:migrate RAILS_ENV=test

## 2.4 Run tests

    $ rspec spec
    # different output
    $ rspec spec --format documentation
