class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.1.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "db2046ed40f4af7e410a1d06536ec629150b2ffa48a47b477c2a62fd11cd1296"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "b9c944c54c871c9740efdfe5a84d56829a129abb4ea5dc8205b3e5cbbe7a9a7c"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "749685cbaed210bdc68faf0c3c9a449dbf5c73de7ed4fb5a123143127fa71b02"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "1da100d766eb69b8ef542a7b7a69cabc8fb74ad751a3a7e1356e368bedb6553f"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
