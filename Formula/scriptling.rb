class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.5.6"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "f0368e4b3e48bc05eb75b6333b859007001220394cbc09effeb62a825d2151de"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "f6cff0df5e20e37eaa07daafcf1fb1af681eafc7f7146c617ac6423cccd45597"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "9eda0fdf2c4bdeb4614b021344dcea632a8c09127471076dc26c9e8f1cb4df00"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "0c0f24c32527e93e4215fbc63c48db37798fa39eb327b4af3b2c99e497109a9c"
		end
	end

	def install
		bin.install "scriptling"
	end
end
