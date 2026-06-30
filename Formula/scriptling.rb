class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.15.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "7dd5711a32f201f322f17954a011c5946786a747a6a2099b29a77ffacd008e0e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "44826a8451855fe8c9cb386f4dd462db9ec997f77f9798c239e61baf5697d70f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "fdc581a4d285d9cfda493d80c786eaec7f88a0b08e9f0a18469306bf5b749868"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "4bd0405b48e5d1e78e7db74b2d11bf5cc0363f73f5e1c91596d0d5f6573236c5"
		end
	end

	def install
		bin.install "scriptling"
	end
end
