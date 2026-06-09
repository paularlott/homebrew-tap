class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.11.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "96fe4ab61b5b784d9af5cce603bba0b06d2ffad1898761d31e6b5a300c355386"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "29f0e707a65c458a4bcb55e973727bde62ca128233e58c93ebeb8fede08e4958"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "c71cd3728a4b6a1dceac93c75523d3d86958bbcc885f45813d9bbfe5d95e52a0"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "b303bd7eeb29b676144822ffe9a82055f08049a7e8682f165f1b49b6455fbfde"
		end
	end

	def install
		bin.install "scriptling"
	end
end
