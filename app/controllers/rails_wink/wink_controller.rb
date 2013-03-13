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

      if email.nil? or email.empty?
        email = nil
      end

      @msg = 'Thanks, that should help!'

      if jsobj.nil?
        @msg = "Unfortunately that didn't work."
      end

      begin
        if jsobj && jsobj = JSON.parse(jsobj)
          WinkMailer.report(jsobj, description, email).deliver
        end
      rescue JSONException => e
        Rails.logger.warn "rails_wink: caught JSON error #{e.message}"
      end

      render
    end
  end
end

