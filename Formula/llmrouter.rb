class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.1.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "0621ebf66d25049b62f27214c5dbe1a8c207bb7a8f45a411b9a727c3234abf49"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "f31a81360cf10e70eed40fb731c050c266ff0d27655a6d684fbf6a2acb4303b1"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "59b7e7936cfa07f98c10d31ec5b7a237265983f26e08c7b23a17922f3c5b2be9"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "99ed576a9dd54310347ad7f2de933426c786143f25865c698282b22a5b66f8a8"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
