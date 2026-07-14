class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.17.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "fa97eba9ea326832ab920d1089c9615d520a783227c2846bad5a05cb2ca05da8"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "6cd20e86590b8e9bb61b985b8e87a3e3b8f41c81f7dc84fca3348e81ace8b84f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "2141bc3902022467fe77ba353cdbc99af93d436e683d235ae17370297b40f73b"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "49de1f923c00346cd48f5291e2a9d4822d3d1b53c5cb2574f31f10e9b8746460"
		end
	end

	def install
		bin.install "scriptling"
	end
end
