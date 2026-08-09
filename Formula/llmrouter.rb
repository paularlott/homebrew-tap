class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.8.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "b0fcdc50c6c1542978751fad34a43bc46dd3e48cc4c3bcbe982777d68cfdf17f"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "0e56d83d74c3e71ab9fc299a5a034068cac1471c641bf548ac3c1c2fb53a1616"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "2560610e8431b6fc26f482fda9dd0488aee9972d016016ec0fd26557c02e7b4c"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "86f2e064e41b670efe22101bb314c88c7bc0db83797a8a7fa5112fca95371695"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
