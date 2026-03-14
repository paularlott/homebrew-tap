class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.22"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "714f0c29345b2ff2107dea8760715bc66ea5faf17c40c6af45c5cce190cff1bf"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "24d6fcc4379c1001bbf7baf3feaef855e5cce604e27e82d95c5d0687719d9fbd"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "bfbd3b7eec11472aff720d2b899a3af9eb1e4d4d215883ff4ac8a5389e25d119"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "cc45b2150dfa59e49347f208bbdcd48d883b6ebf92e591fdbec63356319bb457"
		end
	end

	def install
		bin.install "scriptling"
	end
end
