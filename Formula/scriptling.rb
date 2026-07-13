class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.17.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "0953fb98cbc32b30b27052cd95018a2257e89bc72132c70cb7574af324f5bb03"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "a9d281224575215fb4258f9e59b29abb8b4b94e4bcb81e97ee4565158a411317"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "72af82df23fbca9f86e479f46b753a40c77a9472b4ec39778065efcdacf87b33"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "6348b1edcb9b33db11ed80a7c0b432649519fe894d756633fed68385150d9c25"
		end
	end

	def install
		bin.install "scriptling"
	end
end
