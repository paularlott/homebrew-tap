class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.20.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "97cbc9089570e8143f53878e40efdd7b1321b550645aabfac06b3ccc9b8925fa"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "fc3da47b59955f856da63b482e68f52aef566e2deda8a6dfd3478d3a2ae7b5aa"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "58dbb8600b548f85518ceb67d98b2df46734ca4c67e809defc697bc1c7d5a677"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "43ebcf481f072e4fc9416551cde00aaae12e53264848c4ed2449e47b1d3f7cf0"
		end
	end

	def install
		bin.install "scriptling"
	end
end
