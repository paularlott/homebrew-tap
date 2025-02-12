class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.16.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "f7882ea8429eed7188ede0ba423ad873fefe185f2c2bad2dd3c0248a4eab77e9"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "b852997ba960d061d2a80e3b0254bfaab10173d338cd3a818e9a32c74aa8a306"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "76c6c39ee7221be6d07f4208210c87372494d318ca675995bebcad29f6adcbbc"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "77671b91f9f786e2dd04d6c92096695b52208f1eddc8f79b9f546cfb98a51b4b"
		end
	end

	def install
		bin.install "knot"
	end
end
