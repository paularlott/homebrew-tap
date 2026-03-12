class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.21"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "511c0af2836e86ac954e728a1110dd11c42979689fc35186f40944b5b0609eda"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "f2af6cff15806e8a4c23b0f216318cf4db6eb085bbb247a7981acde7136ccd60"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "5ef64f5772772936494e4de12db277c96c1652ee8b99968ea67436a79c205d45"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "f68e50005e1ee251bd417c90c5deb7e39db67a223d462c8e51cdee4148d83af8"
		end
	end

	def install
		bin.install "scriptling"
	end
end
