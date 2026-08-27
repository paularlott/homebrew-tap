class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.21.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "091c7fb059acb81864443841c6c6c129bd7414a9cb75612a848a8117ae322f06"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "3a15d6e5aa8525dc710f84b283f40ed113ca6bd1fd999072a3f8476273147219"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "43033837abfa102ce7ae2897be706d7b31c9e085c44918c0846a5a22d8c3bfb2"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "911dc4a3c4118989ee7504d1aef229938a4e8d9a215324bc1275c76af8c16f74"
		end
	end

	def install
		bin.install "scriptling"
	end
end
