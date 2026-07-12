class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.6.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "21b3c05df515cd55d75e44750e516c559529c4b35938f2d08f618e6a30d558e3"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "c59211c5a48aae1dacb03d7d50cb7baabe604293c1187a78336d49e5ceda3e57"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "eebad78de072c17ffd1a7228e46af8c89e791bb31fdc8f4a5f2cdf5567d5192d"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "e0c2680f7f232b05b7daaae327e59b4eb71e38e3211068fc8ffc84112f57e0e5"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
