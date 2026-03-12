class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.1.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "be4f287c903e23ff2653772a4fd48af98470d9920bbebe5b900b4651aab58746"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "837dc449b42a7b4d92547a2c6536789181aeef177af61d1f654e734aa7ce86d8"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "069f95e0906c5a1a231378d3e42d8e2e97ddc84ccc8ae75193e6f4917c75bb11"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "c0a521c413f0044f9db9fcb5193f85e3767a9d7cccf9263983332cc1ed8bda82"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
