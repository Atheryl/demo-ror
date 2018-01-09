class PagesController < ApplicationController
  def show
   # file = File.open("app/views/pages/home.html.erb", "rb")
    file = File.open("version.txt", "rb")
    contents = file.read
    
    @version_number = contents
    @ruby_version = RUBY_VERSION
    @rails_version = Rails::VERSION::STRING
    
    render template: "pages/#{params[:page]}"
  end
end
