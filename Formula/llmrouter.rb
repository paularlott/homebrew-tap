class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.6.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "48c6445d85069c2f1ff30d4454d38fc4da45022ae2d7142c1b68631a7b52d7a5"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "c12d0db6bf583f0c41b6e7d7193e089da864877fd3c2d3f8de8f535cc532aac9"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "9f0d406211ea8fdb82a58b0bae44d94fc229a3ffba7277758cab611393411368"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "826353421ab4b18ea077d83348942574c660e59f67b819804f71281d83f6e80a"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
