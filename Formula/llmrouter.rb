class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.7.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "24ba82116e2889847a4be627bdd3757c4774d0b62c6b86f391ab3f4d3964604a"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "635b3d1d5615287ce15c1bf385b4889430734a5a5b656250c837a55485d38375"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "33ce0897488a0e2e0c5e158840eb695e0d1bd2c1bfb34d1f995e4af359dae97a"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "5a2cbadd6b069cada1c1a789c1bf148fb3fb094a64f7beee9c7635798f061189"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
