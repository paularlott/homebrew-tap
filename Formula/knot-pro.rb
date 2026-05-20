class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.24.0"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "6099abbe01672f52ab2be87a77ef372d8367cf1b8707da4c6d06eb58d85c9b96"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "a4f1134ba4b9060572258061457454796acdfbdba2686b7b26688e6fc228b309"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "1b7adc6c71f733df339e327ad1db8267e4cae8d5eec04905ebae2aa883c46e99"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "63edafaa31cec23425150344d30f51ae9e969597899b4f1e539cce2f1da028fd"
		end
	end

	def install
		bin.install "knot"
	end
end
