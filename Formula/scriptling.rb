class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.4.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "3a5e5436cf52d9e6d7a7a5e0722582cda093583cfe172748bb2d4f968e58607e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "f4c111d396ba00e20c0b5e85a3b85ed4c1eac2445220566f5df54b758dee08b4"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "6dd6873000e42cdf567ad4b845f50e78bf6784c7782971ea22c4923a3d9530dd"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "86c7581127bfb8abc0e6f8b5df5dd1fa7e5572e71ae0a94e4aa842e25c764a99"
		end
	end

	def install
		bin.install "scriptling"
	end
end
