# encoding: utf-8
require 'bundler/setup'

require 'eventmachine'
require 'em-hiredis'
require 'rack'
require 'active_support/core_ext/string'

module Slanger
  VERSION = '0.3.7'
end

EM.epoll
EM.kqueue

File.tap do |f|
  Dir[f.expand_path(f.join(f.dirname(__FILE__),'lib', 'slanger', '*.rb'))].each do |file|
    Slanger.autoload File.basename(file, '.rb').camelize, file
  end
end
