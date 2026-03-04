class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.11"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "f8e37da8c3ed5842958f8a97d703d6e7914c2ce5419241261e49e23c0b50560f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "70e907fd5a6a5ccea294687b096be6707015ae6464cea999948e444ae1f3edb9"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "65ad2a1c4380df4601cff2db7dfdd3a93fc5d8e3da75c0f529409ecb97945217"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "0da216bb634b59664cba496a6ceaa2e181f27c8f244f303f8a3cc5b3a0c6b4bc"
		end
	end

	def install
		bin.install "scriptling"
	end
end
