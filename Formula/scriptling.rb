class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.1.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "481758a6afaaa6d5fe2e7808ba739860dffea815bba2a141c041382d4eeab963"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "4649e19fa6144150d3b0b484031449be8b121e89c6d90d209f8c058ef8b1d0cf"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "05fdf7dcfd30e85ffed7cdc610a932ea17dda51d7b43a11cbac048d90ce4595e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "82d302f37bf09b0ed33f5516a18e3ad33c04207f77ce90b5bbdcffd36e2c45c2"
		end
	end

	def install
		bin.install "scriptling"
	end
end
