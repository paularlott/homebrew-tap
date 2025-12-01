class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.21.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "cfce09b7b4647d8a4d4bb21ddf2c9d19328021aff3ac95e4427e6e9680257c17"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "26a4f51ef4e33e56bcf4ea2c0cb89eb7b77a5d35b09e0aa2c5d14726e24918bc"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "91f834dc9571a1977a514d5a0c3d613320bc489da6d3cb8f3d3ab9b5c06da14f"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "a781a54ccdc7e20ccff80be6c5ec93c303d116aa12eda514b7cb948b43606ed0"
		end
	end

	def install
		bin.install "knot"
	end
end
