class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.4.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "0eedf408c7639bc9a48717a365c14bb987bc79001c228cda9af3e84017fc43db"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "92b202153e865adb16227f42775126b520e7bbe3234d03a59b8995c9b90ab232"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "cf77ad0dec0a91a2cd0612579a8aec5113764a361313b5d6931b0e06afc7bbbc"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "6f18269dd922be5b2a22a7527357c91977acb81190da6de010c529439f468acd"
		end
	end

	def install
		bin.install "scriptling"
	end
end
