class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.7.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "a318f44f79540e2c3ee4ab73f83080e53c115a16bc45b680459e289eee344281"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "1ec415f2aa7e70aa6a7e33e3f447d73f61b8295088a626c36ac25a7f1e7abd8f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "35cd35f538ee867f218f1e55e83e95c5fa0a41ff39d324cc2919f6f5d7552781"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "5cf8a2abbf49c02e34c502101a05a54b3d77cf8ac20b7c3767cabe052ebd5cc9"
		end
	end

	def install
		bin.install "scriptling"
	end
end
