class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.5.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "4a034bff8e9d72193391dd6ad4bd84eed9c9c306270e54e9eeb64df8d2b897c6"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "8ee6256bca9d0c7bd90a670f8acef6e2308fd7a3d3ea0aca6bb4b612e349a13f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "57421a777196272492d7228d67c98a58510d0b0d999a54f6aa346768d22514b2"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "a770ee21aa0285642c4afaca765d9289894797e63b351de91bf997c9c2a055b7"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
