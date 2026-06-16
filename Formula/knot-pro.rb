class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.26.1"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "11656a1b3170c33d406f0300a2f4417bbb935326700a485d4c346a05c87f1442"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "77f70f1859518f3d42983594922871d38a9e6e86d4a3e2abec8c340c1f451c85"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "b92dcb853a4976ba1c58090795e39a4ac91431ba36450ccffb5be6cc5b330902"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "e1b0ea27deb9beb10493303fd82ce784fe6144cbf40024c54e8c04bf5669792b"
		end
	end

	def install
		bin.install "knot"
	end
end
