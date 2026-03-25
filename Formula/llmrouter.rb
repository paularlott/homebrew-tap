class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.1.7"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "bca62181bcae3b52fb6ca3d44939bcf3aa8a5f8aa7747880e409c75bd354742b"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "310b0d64a3c37ec2728998fb26959f050d7e5282813999cb52929741d727b337"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "001dd8c6ad49009a59b405177e87d0386514faad9d4c895e54d2aedb34553330"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "c215d521b71e82c0a0dc0e7c471e98c88e7d5486b0a69f9066037534bba5a4d1"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
