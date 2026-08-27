class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.21.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "ee1778eee12215fba97c9642479af5f998971b806d3576f23a7c1364e2fefc8b"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "6e9fca697cfc7d806aacce1a3d9c5c73ef47b0199547717ad4f27275b9fd1837"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "427df1388146c410cc15e79ce4ff4c0d9156992e3ce629747bf4a9946c3610b1"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "191547600dea3cb0ae0e3fa697592e91deb66e0ea0c468512cbdc18f07283980"
		end
	end

	def install
		bin.install "scriptling"
	end
end
