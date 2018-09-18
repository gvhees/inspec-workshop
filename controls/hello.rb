control "workshop-1.0" do                                # A unique ID for this control
  impact 1.0                                          # Just how critical is
  title "SSHD Config"                                 # Readable by a human
  desc "X11Forwarding should be no"                   # Optional description
  describe file('/etc/ssh/sshd_config') do                       # The actual test
   its('content') { should match 'Port 22' }
   its('content') { should match 'X11Forwarding no' }
   its('content') { should match 'AllowTcpForwarding no' }
   its('content') { should match 'PermitRootLogin forced-commands-only' }
  end
end
