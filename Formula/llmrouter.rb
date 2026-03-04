class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.1.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "62b2d08a797165881a6a1094c96b6ee635600c86189220788f5fa1afed869f7e"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "ca0cf70550e278f160656aa0a1591700209cd6090a03751a4e07588150ba8512"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "e74a3cdfb8fa6b3378d5b07a63f10d82e902f9663962a8de87482162bb7e1f9c"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "9dbaaa4d2f5ac3e5df7e9ebeac83fb7ed0bb48502e38d44b7264f86f6fd276c3"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
