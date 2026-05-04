class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.2.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "4aee4b4473fc63f5ed8674c292cc51edc2a26de2bcf9f19621e651ddc98786f4"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "5d0cfb6dbc84167a1175a61f10c7f53268b863ba638b6a212aed288ef7476669"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "71c051020129249bd666b2d852a97aab4004b2d9c001c16651bdfcdb28800343"
		else
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "743b5e1d216b95ea4fa4eff7c8db341acc08a7b0956c713ab57070e4544362aa"
		end
	end

	def install
		bin.install "llmrouter"
	end
end
