class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.6.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "d980dafadbe0ce4426ffca930ed9816638b3c1436d97837c4ba215ddfcb3aa8a"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "4dc39aed2f659b976106988d7406bba103657693f2894b5fd646bad72736f817"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "0529fd99bb081ff6851fa5ede0a3911c42cb958d868b30d2f8683e2b4ac620c6"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "d861da385c866f8178a85d656c2dc2fb0e294c175fe1ebdee999567cbf0234a6"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
