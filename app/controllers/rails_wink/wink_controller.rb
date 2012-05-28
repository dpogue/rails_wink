module RailsWink
  class WinkController < ApplicationController
    def index
      @email = params[:email] || ''

      render
    end

    def submit
      email = params[:email_addr]
      description = params[:desc]
      jsobj = params[:json]

      @msg = 'Thanks, that should help!'

      if jsobj.nil?
        @msg = "Unfortunately that didn't work."
      end

      if jsobj && jsobj = JSON.parse(jsobj)
        WinkMailer.report(jsobj, description, email).deliver
      end

      render
    end
  end
end

