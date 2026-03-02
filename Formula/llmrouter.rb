class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.1.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "b542a9ddc5106727a8030568ce8638ddb4276dec9e375c52ac2dadb0f45bfaca"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "b929b6e30c01f5cf431554c60057cf0e1df63200234523f51c5281c997db69c2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "59effdb425c524916ea87dfe49194e7019fd5cd71c3e88421fb0e0f6a2087562"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "0e322dfcba0c472a11743c884cea08bd9aed4443fcf24955f880a1e959cd4d66"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
