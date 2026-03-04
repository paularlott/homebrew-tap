class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.10"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "d8eab9db31c2025a7e0c6e729393b98d6f35a36780847a1b5b1a2b829545f0cc"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "07c1308301cc86e46f0d6539fb11a6eee1052f18e5e07e1c19c013c6b8f03c8d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "65ece47ee3a6bdf41d8127c8ba8420c40cc3f956fdc53ace5ec468a9980e033e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "d302fb4f5d7f9ddfa240a3fcf4e1183037d60919244d52fca44d3efc3e7cbf82"
		end
	end

	def install
		bin.install "scriptling"
	end
end
