class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.1.8"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "5fd6e13f5942fea37a8c6845287b1f3da70df9f521ad7c7f4c09c40b1f4c98d2"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "a7b05df525ba56f80c724ab3497ef65c3af9383b4cfedef93de3d5874618f16c"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "8fb4833ce48fa7a0714e664297a6da275173bc979f91a621b21aa1b07a6e8c98"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "5fdc44aec52ae38b64239b9b72930f10428f41e6cea73f21a63d3c135e683e84"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
