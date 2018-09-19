control "auditcheck" do
  desc "Check audit"
title "port-check"
describe processes(Regexp.new("auditd$")) do
  its('entries.length') { should eq 1 }
end
end
