class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.9.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "ce2e720b0a7cb3b1f8b39425b7252ef88dcaa3ce59bfc2aa4a20e370d4dfb70c"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "58d77b37d01f212065e8beac7d6aafcb91a700f9562d9b67974211e557a4a054"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "1bc24672517f5f173fcda4507a9b84aece8e51052623d9cc90b717dda960bff4"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "2d7c562ac549d03b6812c5c923d75d76699b5fa6f2307bb7e98ca8404672d678"
		end
	end

	def install
		bin.install "scriptling"
	end
end
