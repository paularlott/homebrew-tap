class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.23"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "c9a8810884e57e79d8c8baaa12af73f43bcc06107bbeda5a24390e068cc01a50"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "bdd5ae323bbeaa3d629b593d53d4fb9a521d61c4eef5d2295487bda974b67f75"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "ee8e8cb9982d4ebc8a0bc09f442b99f7067f6708c75e2f3245261a2d68aaee75"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "b7172aa812d07a6bfda668f43cf3e420846d19718929be25ab27c9241104080f"
		end
	end

	def install
		bin.install "scriptling"
	end
end
