class ApplicationController < ActionController::Base
    # Method aka action in rails
    def hello
        render html: 'Hello World!'
    end
end
