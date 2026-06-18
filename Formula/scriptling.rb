class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.12.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "a0df8449c5f43e82d372e73c2879e607501af529a2e2e8eda1269c784b117325"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "3e2cde1eab5f0bf17f62c53af4696c6d43613b006586e054d0cf373c8be066e7"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "aef0bab72a6e2b24f0820632b2f5a836ddbb889ca989ab2404a0dd5a62940ecb"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "f714d5b91f3aba9fffbc0bf548f8408df0b0e8da4264da5757992491e5547157"
		end
	end

	def install
		bin.install "scriptling"
	end
end
