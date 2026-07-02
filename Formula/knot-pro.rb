class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.28.2"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "2a9117abac087be95b311d5a03cbe6a54d3e11341171b44332c9a08a6a2cbb21"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "d92f1177acd4c791dc39c31870e7431ccbb015904dad49aeedacf0a25334444e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "8e29b9b24ea2076878a7c618c0daa20c4ed62a129f1b872685935de672f0884a"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "4be34334942a41557f54418e8b0d6a4e252582b76ae8c23c4814cb18c077e694"
		end
	end

	def install
		bin.install "knot"
	end
end
