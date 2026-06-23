class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.12.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "ba55d074eac82e08b001cc88c4ae531a732d9562bf8c37a9f8dc42242f89a8b2"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "a2166457db0d2be905bde26b1847327edffdb87caccf0a9b6e074b5d2c23b2f2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "72ad99379aa030863b9517f4721bd007c34cdc36031daf93b1103202232b5403"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "8dd9d649bc0bf2c4973e33f0b193e597cde11b52ca26394cb7d58f5293de7550"
		end
	end

	def install
		bin.install "scriptling"
	end
end
