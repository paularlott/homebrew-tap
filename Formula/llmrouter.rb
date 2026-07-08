class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.5.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "926ecfadf2e1144dbd3b5e6818d3db1d5cae99d4afc7cf09b07bff93205ef2f1"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "4f996977f37a4808914e46ac105cd38299e581f036b4de70a44cc8f94e2e1237"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "ab3739b835f4b5e070e7ec19d8bfae5765aa48b7d4619de77477d38e9a396ba3"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "e0caf33fb2c30550167f0127bc0114bba44a0e58b106b9361c05ae70e2d2560f"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
