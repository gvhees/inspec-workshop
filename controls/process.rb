describe processes(Regexp.new("splunkd -p 8089.*start$")) do
  its('entries.length') { should eq 1 }
end
