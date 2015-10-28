#!/usr/bin/env ruby
require 'rubygems'
require 'watir'
require 'watir-webdriver'

Selenium::WebDriver::Firefox::Binary.path='/Applications/TorBrowser.app/Contents/MacOS/firefox'
profile = Selenium::WebDriver::Firefox::Profile.new
profile.proxy = Selenium::WebDriver::Proxy.new :http => 'localhost:8118'
profile['network.proxy.socks'] = 'localhost'
profile['network.proxy.socks_port'] = 8118
profile['network.proxy.type'] = 1
browser = Watir::Browser.new :firefox, :profile => profile
browser.goto ''
