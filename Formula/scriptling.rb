class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.6.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "cc57c58e50f9e9fb03f2db787acec2f8f24cce28253782548b3de20815c432b6"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "69e8e5c325772717504b313a33a52b8f8e48aec469124c816bca858a6aa7d7cd"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "c1750ba96431f6353c2131d5c3acd1716cd8586fd693bfad5c02e7c6c760ab66"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "080a9b0b802eaf4d9b862883018d9a7fa4f744afe09b1d671dfa148e4a10574c"
		end
	end

	def install
		bin.install "scriptling"
	end
end
