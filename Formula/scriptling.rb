class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.16.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "a521bc747f0b8856de64e5625410f97ea96d4814bd87286b6fe2c9b433c35439"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "e31721ee8af550dc4a43f89656657c9438e7921e2f21a56e7e0cd02bcf26251a"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "f7b779aae24e4006a01039e81417be1923a5a15c0f95a1a39fb52b25cf00625d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "83add087b031a2c2d85354026224005f825da59962e548ac7b386bdc87d97546"
		end
	end

	def install
		bin.install "scriptling"
	end
end
