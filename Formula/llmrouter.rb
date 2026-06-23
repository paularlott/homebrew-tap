class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.4.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "10d3d725ddc19c09c2c8e57bfba385d94c9e9daa28a3a5984a9c31a86a158466"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "f57759ffed5089cf9497abf7829619fe4ee7e25456ca00aaeafd6f9dc37f8412"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "5219b256d9e69d27dd1e35c21eb1a086defbc3efb6e29879c6c75c981c64462d"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "6ace09c68a1c3e152fa6f3f3ec3ce90f1779e1a6e3549a22455a85003dd6946e"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
