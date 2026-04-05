class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.5.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "41ba6f58aa181c66ca0ecf19399f1d07b4fca99720a985bdc6d57c41cb6e2072"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "7214d24f4079f1b9402ba3bd8b94de3ad5161d3a6229c5f1983fbb85e7b4f596"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "66a6b9d86b2302c76f4132361008e5ed4d1f9681e31fb0c062b01f3c91d9cc9f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "00c4afb0205b4a566db7725692ff7a5e8371f73aed54f2c62db70a6736baccc8"
		end
	end

	def install
		bin.install "scriptling"
	end
end
