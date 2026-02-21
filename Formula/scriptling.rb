class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.1.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "8afbde112db3c71c8218dd02960558ee223d500f1cc29afbe6304744c506ab2d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "9ec13d3ed8fe966cb82b66c6bfd75a28952e31ee3adb54bd62130aae91f17b43"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "7f9c639c217ea8a42e88ffa825229f721739b776535f546e528fb57341b7b24d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "7db74511dcb0810ebc6403fe8b132516fa1082edd50773875eee67b9c13277d3"
		end
	end

	def install
		bin.install "scriptling"
	end
end
