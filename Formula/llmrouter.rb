class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.5.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "dabb99cfce554b878998da5351e427eaeafc3c324c90551f1c6d1076aed95bb0"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "fbcf2ff8c28a5dc044e476a9ca963c54c1d5d181458847b212a44b2da7dd270b"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "3b412d660644bde63c04eadc07dd86137d2cd3527b0e786f04d681ae98a60c40"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "75ddeea61bc139ba4337a02dc926388cae44d49e648831cb8c8f69399b9da7df"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
