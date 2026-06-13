class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.11.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "285dc1bc5266a1cf7c5ffbcb355d3ff5b319dd254e17d5bb1e51688c43c99dc6"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "c2fcd1582ede9d8715767a9adb51391c7025e08e864b593f53750f71c87a66cf"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "1e477d802a89452b3961ac2bb12dbe8690c620a9e53df70460811a186a5497a7"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "c39685cb8647e6dc9e815058496f53cd7fb40f4c5e962c209ca54e5c6aac7ac3"
		end
	end

	def install
		bin.install "scriptling"
	end
end
