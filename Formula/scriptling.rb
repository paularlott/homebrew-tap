class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.9.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "52abcf4611b4debe2be7c7acd479bbea8921ffe0cb21dba127435d471b4d2d8c"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "8d512645e46ef5ea13b10dd0a6d7dd1fb2719f6a831dd22fd2cfdd973a7ae369"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "fef8cff4f97d8bbeaa76ac6b01e0c987a9ff0ef4c6da5c07279a012187b9032a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "5bd1f678acdf909bfc3e707c47efec3a58d9076ba671c3b6812865582f5e1e6e"
		end
	end

	def install
		bin.install "scriptling"
	end
end
