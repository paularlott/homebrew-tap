class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.5.6"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "99a010664990f4c88be103b87243e334a5d3377fc3574cafc311e777299db2fb"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "68ef2b1aef2b6a8e8911f8bf59489a7a1bab79c459c44a4ce084fd3809325f73"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "bfae526c15824d91d9f15d186a669c237f24bc8f1260268d87910b87e9ecf250"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "94fb57fc9434e0a387bab2a5d2974e23540d2b66d6f04280571753d6b9c31f90"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
