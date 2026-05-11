class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.8.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "fc8600652bff8d8cff9dba7317967d8ea131d6ab90467c69926f48712788bf11"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "3e843d886a42f60d8fc7545fd2c2942b76c47d2c1ba1768e87365bf67e62dbd2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "7f26a47a56e1bd3bd253612d38ef4b4a206f0af96a655b1de8565ea501f15d39"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "8f179a006024af4ac3ea7fc3eab132a83766c13edc556bf2822260018116f138"
		end
	end

	def install
		bin.install "scriptling"
	end
end
