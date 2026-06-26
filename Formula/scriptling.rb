class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.14.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "1bad2c755a36b32c402cbb2c56f2b8dc1e95fa701c313228fae8ce79a1714fe4"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "771340a3df0777363c9e69ecd1c02c520b2cd3cc1ce946a50aa7797ab0b836e2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "75ab254cfdc547ecdd8d7017f713b6677557c45f11ad89d16d0cd1405098e4be"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "4e8bb38e73660e62d94596367f9f0de5a78bca17f7cfb1dbf47a901d323b5972"
		end
	end

	def install
		bin.install "scriptling"
	end
end
