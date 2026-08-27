class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.22.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "53b00bc343cdfdbfd0b36340185d2b02c318cf801ad286381cac0530d498a06c"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "63a5226113af6d1d418d83212882f02ae99e53248f147c7ae1017d47e9abbafe"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "da925414a147b6ad1cbb99f0d4318cb6684a93f2adbace109292b84204085e4f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "cf066a68f5eb9f75e6cd9fc7295a4a8ccf8a348b2c9a448c1b83da2102b9aef9"
		end
	end

	def install
		bin.install "scriptling"
	end
end
