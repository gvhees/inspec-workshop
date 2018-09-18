describe processes(Regexp.new("auditd$")) do
  its('entries.length') { should eq 1 }
end
