control "portcheck" do
  desc "Check listening ports"
  title "port-check"
  describe port(80) do
    it { should_not be_listening }
  end
  describe port(8089) do
    it { should be_listening }
  end
  describe port(8000) do
    it { should be_listening }
  end
  describe port(22) do
    it { should be_listening }
  end
  describe port(23) do
    it { should_not be_listening }
  end
end
