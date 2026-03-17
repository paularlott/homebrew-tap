class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.24"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "b9c9a25c3d48e7a3927e643e5cf48dee53550972d77db28284119099380581b9"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "8cfa7ae40d539891d6b70f78d02e9fca92b5fccd534443d44a0423443d333ca8"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "c90368194909041d3956c34aabc9aa2fbfa237b61203ce385f303fa63a9ceb42"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "615b1a9f314b081cfca3c1fc6d91bb1461e338fcb466ba87ad4b457297018bd7"
		end
	end

	def install
		bin.install "scriptling"
	end
end
