class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.9.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "9d8af227ba0b88ff7b224b0bb7d06f60e9d70b0492f9826cfbcbd16cd922c541"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "734543e310e6ffab43e050e498a5dc38c70e6eb9c64e42acb7e7ed165a8e54fe"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "28cecca2527b9e757a0f822cac54b2f058f60bbde64cd1c695fdfc4ee867b397"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "7c8a01e91bbbe856ed0d4d7dde986ebbab7818474a7cb9712333c114e6d56921"
		end
	end

	def install
		bin.install "scriptling"
	end
end
