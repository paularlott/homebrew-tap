class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.3.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "ae994e24d83e7d273a835a2bba1948308dc17bcaaa2c68bff02af7d935a94b2d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "c7db414e397cd2c39fadf44c4c2397da610cc68cf6198b9f90a0385bb10ae4ed"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "c25424330b656844db0e6d1f3e8054368cb791fca02b30626469379e97ae5ac5"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "5b824938d908913339baeaf97d3f29794c8d0533db36e12d5cf9c82e75fd21ab"
		end
	end

	def install
		bin.install "scriptling"
	end
end
