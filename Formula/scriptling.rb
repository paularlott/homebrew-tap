class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.14.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "da583e86ad3f95c80457c2444f7e5553863b39fc236edaaff9787918a62fa1cc"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "2b839488bc6946b4b20608955746ef5b818f61e49bcc0f5169070b628911e2ba"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "a74e04d532a0cfa96a81f824906f9485b74efe89225980ed1636d633930bf72a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "dc7f924c51434248df6b650e86e2a3e75f1f698b2fdc5e2c462631e3d568dec4"
		end
	end

	def install
		bin.install "scriptling"
	end
end
