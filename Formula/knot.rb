class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.23.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "ef0eadf14d851d06c88ae85914dbdbecb4c72003ffd0ee48b3c5990eccb32115"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "8bfd7b0d2f1d1f264f9364135b624bb59bc9a8481d3803daae12185342428ac2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d26f48745ede047c9fcfbfe368197da2806ab1e6f685cf343e2443bb70714fc5"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "688da06d7ed0d6098bcfc05fb1e7d1d0cd52fa227bc57c86cb520e3767c0dc90"
		end
	end

	def install
		bin.install "knot"
	end
end
