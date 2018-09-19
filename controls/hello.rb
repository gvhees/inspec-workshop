control "sshcheck" do                                # A unique ID for this control
  title "SSHD Config"                                 # Readable by a human
  describe file('/etc/ssh/sshd_config') do                       # The actual test
   its('content') { should match 'Port 22' }
   its('content') { should match 'X11Forwarding no' }
   its('content') { should match 'AllowTcpForwarding no' }
   its('content') { should match 'PermitRootLogin forced-commands-only' }
  end
end
