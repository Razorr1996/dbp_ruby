# frozen_string_literal: true

require 'rubygems'
require 'bundler'

Bundler.require

require './server'
Sinatra::Application.run!
