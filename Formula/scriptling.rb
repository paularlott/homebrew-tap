class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.21.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "a5bd67c13f2320cc17e18f6631c283e4cf7bcd8747f12f693f217c2bc5ca2105"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "a5f8bf4986cfc26b9a8ddcb8d7979881e159484b0c4d0502b798fb6c47370b46"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "d7118d2b57556dda166e8a844a4809d72d1c72d8b7ce6dfe384638298be2ce29"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "ffb1903d7be328583a602e06895dfa8926d6d4ab5a84a2125f0625b40e2609df"
		end
	end

	def install
		bin.install "scriptling"
	end
end
