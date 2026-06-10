class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.3.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "b11eba272e9334a4962ba07029fe4cb39491b49b1e74de80f45d10b8e1423978"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "be879e63211e50d2cafd3e6fe0c26d792c76d36530be59f3b83112b2bf54e45d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "3cd5058b8acdbf8d2f00b6d563b1cf600d178bc2a42a0d8074b8c4e833dbf340"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "d9df8c25cadbfebd0cc6bd8a79c438b92d134ffaed99d6bf7e6d62f286cc2bb5"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
