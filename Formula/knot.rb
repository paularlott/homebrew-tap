class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.17.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "a58a8de4049e3d9afa2c0fd9099fd2880e4b3cfa79306d0e54526a58eb3160e6"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "635496f76dde926bd63e3a407f24a5ff4b302a7d274d1ae9a6265815582dfb2a"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d32283d94a675127cecf764a8c3e5a991dce868535c6089cbc923f3fe357c6e5"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "7330a81c4940f35d4fba840eb5002c3d1dcc15ce96a2000771b5c6bdf2cb630a"
		end
	end

	def install
		bin.install "knot"
	end
end
