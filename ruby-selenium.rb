require 'selenium-webdriver'

# you may need to "gem install ffi" before anything else runs. This would be a one-off task

# if you are going to need to assert anything, you will need rspec
#require "rspec"

# You will need Chromedriver somewhere where that location is already in System Path
# Chromedriver version needs to match the browser version
# get Chromedriver from https://chromedriver.chromium.org/downloadss 

# In case you need to turn off security settings in Chrome...
#options = Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized', '--ignore-certificate-errors','--ignore-ssl-errors','--allow-insecure-localhost'])
# or
#options = Selenium::WebDriver::Chrome::Options.new(args: ['--ignore-certificate-errors','--ignore-ssl-errors','--allow-insecure-localhost'])
# driver = Selenium::WebDriver.for(:chrome, options: options)

# open browser session with Chrome
driver = Selenium::WebDriver.for :chrome 
driver.navigate.to "http://www.google.co.uk"

# send_keys doesn't require brackets, and you can chain actions using comma.
# Send control chars using :<key name>
driver.find_element(name: "q").send_keys "selenium", :enter

#close session
driver.quit