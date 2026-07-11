class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.29.0"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "a27224aceef3647d1fb5d78125152a53fef70cc0a58fb8100dc658b77ca9b48c"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "f440d37f5ee3cdd922e2db6ab08590a238b4f8de41e31c634366ed55eaa19c6d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "cfb02cc75aeec4f81e9d24fe06db6e18ef267f155371216174fe4a1944173cf1"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "83c60161cb8968a4665ff0c1d6abf66c911296ec07fa863e37d13e38199f0aad"
		end
	end

	def install
		bin.install "knot"
	end
end
