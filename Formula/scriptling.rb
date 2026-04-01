class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.5.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "a93444a7dea54761f484bc980e747f2917724c87e03ccd21998bca83dd98901a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "3cf8165b165342f2ed11aeb15adce56f2c44ff00e5d8306f64a5cdac742b66f5"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "4bc6dee339d96a800d9506ac14d10961824e05db8b82509ef8592c07afe8a40e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "8834e8163703270c8951ea9b9263e5767fb669c75c1c35fdb6d2f6c68cf723eb"
		end
	end

	def install
		bin.install "scriptling"
	end
end
