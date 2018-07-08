# Todo

## Introduction

A To-do list created with Ruby on Rails, for CVWO 2018 holiday assignment.

### Name

Zhang Yuntong

### Matriculation Number

A0138021W

## Versions

* ruby 2.5.1
* rails 5.1.4
* boostrap-sass 3.7.7

## Deployment

This app is deployed on [heroku](https://cvwotodo.herokuapp.com/)

## Running the app in local environment

Clone this repo:

```shell
git clone https://github.com/yuntongzhang/Todo
```

Install all dependancies:

```shell
bundle install --path .bundle
```

Create database and run migration:

```shell
bundle exec rake db:setup
```

Start the local server:

```shell
bundle exec rails server
```

Now you can open this todo-list app in your browser [locally](http://localhost:3000/).

## Authentication

### Username and password to view the tasks and categories

* User name: cvwo2018
* Password: cvwo2018