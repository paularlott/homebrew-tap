class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.25.2"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "49af51304bf1d4a19e68f97c6e18a9db25ce14660282485220bcabbf9be29181"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "b177293e6a597b4e9ec164cfb1dbf10616f8f80fcd74192619e4079c6dfd2122"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "188ac5e6a5f8f6d13557d0dea083c8b7162c598a2c9a2c5e38e471a0f450789d"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "8d50c374ab4842ef68130aac693076b434040f8af48c2ba34eb0f6677718753e"
		end
	end

	def install
		bin.install "knot"
	end
end
