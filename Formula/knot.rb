class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.22.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "d50ff120d73bab7a787f79ae6c4787b1a2e01b1bf433cae81d1ea8f714cd4ab5"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "ae03f68ce6d5186cbaef7f52508b7e396f8d9c82795678f3325800566ac5b4a4"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "a148db5363a3b5be33018f8cefa0f8ebd93eaf8a62d2f074941f3a18223fed83"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "67b2c24d0fb632970460c6c5122396dc9ccf2a793f6b918341770537e538d318"
		end
	end

	def install
		bin.install "knot"
	end
end
