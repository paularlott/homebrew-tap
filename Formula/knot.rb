class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "de7d6cc45ac5bda731c631b3858c3e5ecfaa0f77e48645c741ef16ae66674533"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "ba88049226edfe46b79fc17a84b90a38c03630a7d759d88ff8bc22ddab0548f0"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "e82ff36d91e885e4e82bd3044e065487f52ab1ef26f29b4592771652df1485a8"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "6657307badee9c1daf09adca9c38dae21dd53c22e77969172927b5b7485e9801"
		end
	end

	def install
		bin.install "knot"
	end
end
