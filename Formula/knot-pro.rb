class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.28.0"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "770d814378f0f9b9a29de60bacbf55848d0f12ef25d8397fdadb71ac85a41790"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "52ca0743df0b6faf6c3f1c770431a6e449e350423d20ac149ee708a8725e6848"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "39edb04f673c1fc8b4aa014d1ebcf7e00ca4647db94bfaaf9ff1db35e1578c0a"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "1b397580c2026364761a2497f9d997654a52b45bfbfdea50bda2da681fd6ea64"
		end
	end

	def install
		bin.install "knot"
	end
end
