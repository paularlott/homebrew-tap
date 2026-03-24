class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.1.6"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "7111b498bb67da7e17a8ddb6d46cc5dc350a469034ea294303cc718feb0fcfea"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "1e103203030ed276c0e8cc867d651dfa4c34c246f933475e54ce21184f6a44ff"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "a74baba6853aa9d05b73a93109813f01a3fa6283362c80d2e7c3df16a5eb9019"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "165bcf72dc84643f125255f3782cd4d433be01f58707468be8d7edabf1c0d220"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
