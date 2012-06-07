module RailsWink
  class WinkMailer < ActionMailer::Base
    default :from => 'none@localhost'

    def report(datadump, desc = '[No description provided]', from = nil)
      @datadump = datadump
      @desc = desc
      @from = from || 'none@localhost'

      subject = ''.tap do |sub|
        sub << "#{RailsWink.config[:prefix]}: " if RailsWink.config[:prefix]
        sub << "Bug Report"
        sub << " (from #{@from})" if !@from.nil?
      end

      mail :to => RailsWink.config[:to], :subject => subject, :from => @from
    end
  end
end
