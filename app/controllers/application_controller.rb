class ApplicationController < ActionController::Base

  def index
    out = {
      :"Google App Engine" => true,
      :"Rails" => Rails::VERSION::STRING
    }
    out[:Bugsnag] = Bugsnag::VERSION unless Bugsnag.nil?
    render json: out
  end

  def crash
    1/0
  end
end
