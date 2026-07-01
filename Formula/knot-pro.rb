class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.28.1"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "47dc46ad74f271d2ad54ece0bad43f0b68f41c029c86d9e93531ddf81b8c0657"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "5f57822b7fe21a0ec3e6e4f9ab5310a1e86ba6c30a1c89b7fa58b80c74be9b1f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "65d3cc4ca4e5a0284927223d1d0a3add1bdd01378d12a03b1a9adc2aa294d0e4"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "0fbdf4ea36dd29bdf25bdd6da3c2a19be157fbbdf56ba5aa1f4baa61120e12fb"
		end
	end

	def install
		bin.install "knot"
	end
end
