class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.8"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "bc6d53a4a795c7724990423c7fd9eb328ddab3d97d1b47e7c2636549a81dce80"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "3d4c8311b2facb7ea2c17110e8b7f2ad8db51ec50969530541e2a53b81df0be7"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "970657dbdeff3693cfd2efcba856e7390feb335c09a5bf94ea26c304189f3187"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "3467c5b4a059b64520666da2e80c0a621cd67377a4e526b36f0fdc484475b2a4"
		end
	end

	def install
		bin.install "knot"
	end
end
