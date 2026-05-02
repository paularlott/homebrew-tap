class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.6.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "ae8baf0eed1f34d0a118c7a7c96b46247c0da4981a5731fcd1bac3cedd79ced9"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "c4ce996e41fee184a0166e9c5c916cc098c88c30771cef96fc10ea570d4abc51"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "0aecedfca3807929afbce7442d824b7902977486406a0239ec11a6fa4ceec79b"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "11c42e37e549be262889608e5abcd2fcb57effa4a9e565c835c0bb0ef0325835"
		end
	end

	def install
		bin.install "scriptling"
	end
end
