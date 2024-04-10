# frozen_string_literal: true

# Gem Name
gem_name = 'rake_rider'

# Version
version = '0.0.1'

# Summary
summary = 'A Ruby gem to manage and run Rake tasks in Rails applications.'

# Description
description = <<~DESC
  RakeRider is a Rails engine that provides functionality to manage and execute Rake tasks within a Rails application. It offers a user-friendly interface for listing and running Rake tasks, making it easier for developers to manage tasks directly within their application environment.
DESC

# License
license = 'MIT'

# Homepage
homepage = 'https://github.com/mhoncharov/rake_rider'

# Author
author = 'Maksym Honcharov'

# Email
email = 'max@honcharov.dev'

# Files to include
files = Dir.glob('lib/**/*')

# Gem Specification
Gem::Specification.new do |spec|
  spec.name          = gem_name
  spec.version       = version
  spec.summary       = summary
  spec.description   = description
  spec.license       = license
  spec.homepage      = homepage
  spec.authors       = [author]
  spec.email         = [email]
  spec.files         = files
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>=2.7'

  # Dependencies
  spec.add_runtime_dependency 'rails', '>= 4.0'

  spec.post_install_message = '
    [RakeRdier] Thank you for installing RakeRider!
    To get started, run the following command to mount the RakeRider engine in your Rails application:
     `rails generate rake_rider:install`
  '
  spec.metadata['rubygems_mfa_required'] = 'true'
end
