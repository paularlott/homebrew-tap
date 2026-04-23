class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.5.9"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "15f81c9cc6ab93e1976f6bebcd6cf79c914d42967d482b83725a1e42529f7b2a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "1817e6b047ae05af7b74addc2641c74fd900212407ccddc8799254433b018f10"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "68993483cd8487733d296375755d99a179ec1cc448860ca8c98c6ec162daa62f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "2f3c15cfc665feef0df5180902c26cc3c6f95a4864cc083578aae54dfcb7e9a8"
		end
	end

	def install
		bin.install "scriptling"
	end
end
