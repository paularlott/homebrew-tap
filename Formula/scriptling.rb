class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "e039500ce7c83f9d4fe0a5891225f0039de8124bb49c54e6aab5adf0999a9009"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "2280ed9a9c47c2641dcc31d446283fb3e350d8ecec4bd426b36de5811e98e5af"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "6842acae30822a7d901fa95278eb7a0eca889ce97e07230464ab73982730e695"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "e33a1ccffbe08a17f3e22fc2ad7389e445bd1ae9db2734f2478423ca42d3ed57"
		end
	end

	def install
		bin.install "scriptling"
	end
end
