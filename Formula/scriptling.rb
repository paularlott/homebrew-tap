class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.1.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "16355d0c2aead0db1815fe4b276b64315fbdf3408aaa78a144a68b66ec044f76"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "ef5a31cd9b67eb685506e4f52e86eb9a7f37915f89fce24e5a6a9bf905431462"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "1f9984c3e56895a94f2c1b866deae9d85d8899deb59caf436d7041ca6a5ba397"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "0e49d70e573199aed59738aa8c44e47b96173c60a5dbc097ef4c9ca5466e1ccf"
		end
	end

	def install
		bin.install "scriptling"
	end
end
