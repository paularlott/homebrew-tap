class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.6"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "84601b717e859376f0027dc2f0d97a1b8a215a4144f86e0dbca17f3c82b16138"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "c6982fe9dcb9788e88aaa899600d7bd8475f6c57a408190f419a46629c9dc8d3"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "080b0f3a2cd3b0faf153561477111d4bc51fa53dcf30c89d8b3d2fc0a94af45f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "0a2baa5cab1258cfd40da0064f2ab8983b98198850ddfba937ccdc85cef49a62"
		end
	end

	def install
		bin.install "scriptling"
	end
end
