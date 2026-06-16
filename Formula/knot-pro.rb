class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.26.1"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "3f4972e1c40408b4976d2b57bd769d5aeb29287c5f1520b6f80342c32a32e588"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "c7ec7b1e38ee8ced571f2fcea224472ea79205338105031739865ce1b68385ae"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "14705319fd95ff1c93f66d83e1b877dfa968b1620acef9d7e3b79d7a9c469f91"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "2811b85eb9c7a546644627d4fdff3722fadb2709e3052511a918f63e6260a1a9"
		end
	end

	def install
		bin.install "knot"
	end
end
