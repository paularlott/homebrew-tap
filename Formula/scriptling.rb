class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.17.7"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "2836e0505fb603d04c947dab2f3baa0869d110411ef0b41417228dfd4d2052f9"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "21f22fa71b54a082a9c3c9ae93e2d8066a47dd106d1f73444f8313786f24a6a9"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "47b75572c0a2573714c17c9592a6e6f9b514b77fe74f8f22a2b34b0a683c36ff"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "838c6f5a2f319cc607d07721e5a70cb88a26caff5e733e08954bd234161d963d"
		end
	end

	def install
		bin.install "scriptling"
	end
end
