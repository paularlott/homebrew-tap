class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.25.0"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "976c86ef0846acd46c4b901996dfb566bb546448df743c735d5e511564cf81f7"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "cc4547590d2cf47a3309bcea4aceacaf435b84f819cb531aa9b65e9d609782a2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "71b71fc9ceffc8006c91cf74c31b6e878ecd076603234babb27bed78a9c06b77"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "a9e6914107cf3f7d7a021e7eec15b3d76a094486ee713bf05f705dd784533c48"
		end
	end

	def install
		bin.install "knot"
	end
end
