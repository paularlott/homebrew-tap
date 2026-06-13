class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.11.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "a318018a10ededc9e901ab7a2518c01f32dd0e6df527f3cdd3e8ffec2c2ec9c8"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "25f463418b9031017d0d066a6b4954e7708766de4fdd9bdfbe969690b925a534"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "36f3f7c8f4b28f823702dec3146872f7a01ec2e81d12a47e39c4fab40f7130fa"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "2b05ab94e669413e25f7728e38e27646bf7dd6f416b610c4c84185471d207506"
		end
	end

	def install
		bin.install "scriptling"
	end
end
