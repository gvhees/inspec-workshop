control "sshcheck" do
  desc "Audit parameters in SSHD config"
  title "SSHD Config"
  describe file('/etc/ssh/sshd_config') do
   its('content') { should match 'Port 22' }
   its('content') { should match 'X11Forwarding no' }
   its('content') { should match 'AllowTcpForwarding no' }
   its('content') { should match 'PermitRootLogin forced-commands-only' }
  end
end
