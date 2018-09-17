control "world-1.0" do                                # A unique ID for this control
  impact 1.0                                          # Just how critical is
  title "SSHD Config"                                 # Readable by a human
  desc "X11Forwarding should be no"                   # Optional description
  describe file('/etc/ssh/sshd_config') do                       # The actual test
   its('content') { should match '#X11Forwarding no' }      # You could just do the "describe file" block if you want. The  
  end                                                 # rest is just metadata, but it's a good habit to get into.
end
