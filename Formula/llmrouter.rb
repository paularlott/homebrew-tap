class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.2.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "2ccfbfbf62e9acd771c88c647bb47918e41df1923a97d1ece21287fec27700ff"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "d324f7763853a687712dfacac4a13fdfce034b97d55b3102a8bd1370250be4dc"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "4e9217d317f93085eab2fa5b595b189dee274d4f630865ad1239007b3e92cdf3"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "3cb0e5254e2dfd703ab5af3529a958621bbe2840c21fb9e3a9b4c3e1d616bb6e"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
