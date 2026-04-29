class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.6.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "0fd229abd0b9635d8abbfff2ed066d919defd98bab793b938446b718f6e3d023"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "8f6a91ae3a9860b3b0aeb076e154abdf9d1131a304bebad1b37d880ee81691bb"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "743abebd38261f97cc5e9f1c5992d6fd9312a89ca8ec5e79b9956b41a80d52b8"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "541c3dd0647896ed33c440c64bcfd259d99097722ee9f22f7c35b8c044034814"
		end
	end

	def install
		bin.install "scriptling"
	end
end
