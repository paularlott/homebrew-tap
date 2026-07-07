class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.5.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "59a90b6593b7a65b889b8c2dead61f47faf5b37b27b22651510bbb10292c571d"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "e8820d9cc3b6636db2a92f5ebc996adbfecb415fb332881199914614277c25d8"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "e2026e9827b2e56d911188ae1b58539ed62bceeee6ff1248bfcc27818927b372"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "eb0053f9bbebb26553ee154bc7984d1c7efa8abd67d5f8d19283420d777f7de8"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
