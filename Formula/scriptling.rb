class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.1.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "7734ffdac15baa040223df422df83a94347a3e72a7acc980d2ab8a63c0f6ef1f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "a5fadbe4eb00191067a1a2e95316328a38e9c81d818bbb5c6662600c412dc64f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "d65a1d2ac54e655cb801748dba22f8ab9e974df5008514ad92dc28696579bcfb"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "273392588ba2a85c01394dc2920f76490f2fa0a5ea3969688f6b0022474986b2"
		end
	end

	def install
		bin.install "scriptling"
	end
end
