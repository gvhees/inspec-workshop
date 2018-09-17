describe command('ps -ax | grep -v grep | grep syslogd') do
  its('stdout') { should match /^\s*\d*.*\/usr\/sbin\/syslogd/ }
end
