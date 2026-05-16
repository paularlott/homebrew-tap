class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.8.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "d75a696f632513cc52eabab72a537290eed36bb38b34c1212f1ed0f14fc0ab27"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "fd372c7a4751c652f6cfde1c1b7656953f2ff50c129a2aef049602af093aaece"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "1b7f592483dfe6097ee3d0be9147af17816b5d888dd72463d2db5fe32ebb478d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "951e408d4df8a6c761f836946d0c7584f2788bd12aa5393052e938116aa0cc05"
		end
	end

	def install
		bin.install "scriptling"
	end
end
