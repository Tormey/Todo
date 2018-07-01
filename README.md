# README

## Introduction

This To-do list is created with Ruby on Rails, and it's created for the CVWO 2018 holiday assignment.

### Name

Zhang Yuntong

### Matriculation Number

A0138021W

## Versions

* ruby 2.5.1
* rails 5.1.4
* boostrap-sass 3.7.7

## Deployment

This app is deployed on heroku, at https://pure-eyrie-83972.herokuapp.com.

## Running the app in local environment

Clone this repo:

```
$ git clone https://github.com/yuntongzhang/Todo
```

Install all dependancies:

```
$ bundle install --path .bundle
```

Create database and run migration:

```
$ bundle exec rake db:setup
```

Start the local server:

```
$ bundle exec rails server
```

Now you can open this todo-list app in your browser at http://localhost:3000/.

## Authentication

### The username and password to view the tasks and categories are:

* User name: cvwo2018
* Password: cvwo2018