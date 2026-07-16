class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.7.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "79a76c28dca02b5e6948aa98cac7b58902910d5a2d50dea43ebd5c6c97ca5a4c"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "7aebce8bff31d7e89f24ce7081a5a0d917e4e2aa925b530bc039396c025551fb"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "1e94e1bf095da4e673aaeebec2e1ba53a2cf1835ba554b317d9505afd32ccf21"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "4f3ff76eb48907b8ff5d15face2462a06c2a17a677f220549aa818a451789a94"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
