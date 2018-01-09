class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  attr_accessor :version_number, :ruby_version, :rails_version
end
