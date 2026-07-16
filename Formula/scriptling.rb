class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.17.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "0cc2035576dd902e6b3ea42281141a2886592692a01e4712fd7b71320d54b565"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "60470a2135fb5914ecaac03935f9b44a8e0bce1c2bf5130ba575683989929030"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "6a590b7561fc4da1240ce6466507d38887e1ef80778134129dfc6d613b69b2e9"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "7f8eb10285ac95ca5ca46a1841e025ed0dfba446a6cff6743f4924f0f3aa1008"
		end
	end

	def install
		bin.install "scriptling"
	end
end
