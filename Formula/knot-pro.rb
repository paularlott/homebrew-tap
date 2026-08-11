class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.32.1"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "8afca94c5dd986ce9de50a8c0f2438138a199ba42591464fa091578837afcdd2"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "fd9f8ec1b5aa1e7195efefc9dadf481ee4ad96931647e91c0538f10fe3027f23"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "4d77f23290e9c1c1d7ce524417ca40385d67f1420726c77af7a8830115d0fcdb"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "d7f566ba9ad59348702aea0a145b22d08e9c74261c0ccb1297b2baf664a57568"
		end
	end

	def install
		bin.install "knot"
	end
end
