class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.2.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "2ff1bf5d499772cde6310f7e61a14b841b2fc4c53ec1bf02e1ea070d340237b8"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "f26b53cf8f335b9ff64a976755a8428cf41acb68fd98329a02b23fb2d0897968"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "a508a82ca4d4769e83d5f74b0225e6cfa10633f0b4f0e3449176c56f0667b2f6"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "199bda7744e4e2434caf2c56cf438000fdf029d7dc6b7605342821ca3d70cbfc"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
