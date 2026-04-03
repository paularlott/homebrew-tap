class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.5.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "20d8c86d2ee84dcc30b4c21de429ea3240eab40c40a31fdb46c370c33617696d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "1d58f7e6ef353536d7ebb0c848bd59539cae23c72df9f0eea2a882459c72252e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "88ce8aff8983cfd949f9cf7b65c54637ce87e2147d8c5dcc526cb6512ab693aa"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "543bc23cbd631e9044b40c01f9fe91294a756d788014702a8529c766ce4cdd13"
		end
	end

	def install
		bin.install "scriptling"
	end
end
