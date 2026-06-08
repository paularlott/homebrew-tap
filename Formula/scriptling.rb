class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.10.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "a2893be491f402802a74a7211f5a38446c33fbf2e58b7bbce2c190c5ae2073ed"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "1d9cc5ef771358d4ea0a8921777a1f7aafdbe8f18e6e6f0f011143a025192dc9"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "d2a8fc66d5d0523beed9e493ad4d210fc30ffa8b289b494d8b4db16fca210c61"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "81d8b07e7471d46821592e0c87e4fbbf25c26defa7cacc0990b66f420901adf3"
		end
	end

	def install
		bin.install "scriptling"
	end
end
