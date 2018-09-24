control "processcheck" do
  desc "Check process"
  title "process-check"
  describe processes(Regexp.new("splunkd -p 8089.*start$")) do
    its('entries.length') { should eq 1 }
  end
  describe processes(Regexp.new("mongod --dbpath=/opt/splunk/var/lib/splunk/kvstore/mongo")) do
    its('entries.length') { should eq 1 }
  end
end
