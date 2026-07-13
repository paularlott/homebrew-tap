class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.30.0"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "0b7a571d5f82f684c740586da8fe22fd95e2ab8ca03ae557c22e9ae93b36aa47"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "f9b2fecdfd97b363b6f5cb65f90db466b2c53e7df4b62c4abcc089bb44b14703"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "4489165417ce738b8db358610b1b2ef37fbdc26b08e8ce76c118cb0ec2aecb35"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "3af40b0a30671d451486259a9136b26dc80cd92e900af7edbbd3385ab50c27a8"
		end
	end

	def install
		bin.install "knot"
	end
end
