class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.6.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "b45daa26d66b15d6eb08d80370502ab8d2b21a3b251e3700c08b5e17a7dce7c2"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "4216df23242d56f3f55a06cb8ef1c230ddbb83c31a2be7904744387a67783670"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "31e9851f7f7a8d72b9e7f061a58a9019b9667dc01b0b2313e27e9d65c543296f"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "b14d38521e342c24e0581973da2a301ad23d8a23574b3a3d2df41d59e31de099"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
