control "syslogcheck" do
  desc "Check syslog"
  title "port-check"
  describe processes(Regexp.new("/sbin/rsyslogd -i /var/run/syslogd.pid")) do
    its('entries.length') { should eq 1 }
  end
end
