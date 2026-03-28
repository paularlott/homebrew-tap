class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.5.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "45c9e2dd699f0a403d403769b72c5443f0ec4cfb647980a6aedc8f769aadd019"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "a8469ec9d1b4671bdaddc3bcd645e006b9b32867f9a024fcbbab2f9a67f8305b"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "2af8492d39841cd49263b82412c7225a8fe49f112fe0838c398ec89df0604c69"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "ef6e5974732661490ce801310952c715c995059e6aa6879e5f0f001dd78b8ef6"
		end
	end

	def install
		bin.install "scriptling"
	end
end
