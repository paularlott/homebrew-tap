class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.4.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "fa51cb469a5613d3f50975bfe05c839f3d145819f0ad1cded5579192161f3c04"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "7ebd099c30b84f328409ce76b9e14099b5ee1a955ad10203a0a13d335f7e6aed"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "24379bf177719d1b2cb08c57665ead1715f6113b8005dc467e4a9edfe7d45465"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "0166a3a54e0c9f715f87812e2983eb859f5cfa942ad4bdaaf641ed67050537b6"
		end
	end

	def install
		bin.install "scriptling"
	end
end
