class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.5.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "fc0bc6e8357a6a9b0ea6d7c17f54a1ea635cbe75d1111636360b9c358754d8ec"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "d09207ac1337e0e4a7e376f8fb0557c304b0887efba39a7ba331511718ed0bc0"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "d444cb62972fa16b9533bd51549ef0347997836dc4bb6ff2d3f659be76b15fb2"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "48756cf4693534a20c0fff0720ee08332cb51ffbcb533cb43a7fe020bb15c8c2"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
