class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.5.8"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "25627466dc2df801caa2e95683d201e4b4692b2778d331d571132458293d2e9a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "d96961fe83f5c6b2edb4648a5f59e5c46eb3f42d0c99a1bafb49e8eeedd61289"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "eab66c54e98365e7b4881705be772c4e3e4f2bbdcd594a21004b96358cbee609"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "b06f7364e14f0b7309e90b38d5ade428cf0a6245b0f82790c1aebd11776b1f87"
		end
	end

	def install
		bin.install "scriptling"
	end
end
