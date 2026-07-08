class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.5.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "1041ac6094abc510345ec3b0c545ae2660b273395a946e635c3fb4ed70ad6310"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "707d33786652c3736c0840c8d6b384acc0702ab92b803c3041db4b02fd597e6d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "33ff1be48735deb6100423859360b9f202a40a0cba1c4f4ab860073771a03298"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "76abdcd1c80688167e4084e77d28a3a96354fd89836d261bee5e75bce36fcec6"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
