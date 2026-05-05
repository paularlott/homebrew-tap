class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.6.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "1aae3542e77d3e91abe0b54732f9fceb4703ced171096443b1a99ff02896fb9e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "30e12886543f5158087ade3567afb4fbebf9778b550c9cf38710ae3b2bc65665"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "e4158b4a21ffb09669c7658bf3a024782ca2362babc8110414f5082eca152ca8"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "cf02e9870297821a3e0e1e5a991dc20a8fbb358fced7da7210b6431924affb73"
		end
	end

	def install
		bin.install "scriptling"
	end
end
