class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.15.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "5952ac871cff1c5ca4409c708d7607a5db5e2626324cf9cfe12468601253e843"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "bf1d6314fd737165c6c28ae2e0f08288a8fc52fdac9bc00c6b94db3becd049bf"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "3eaef681542d622c9143cc1f28fca9985e68ea09fcda3d95d94638d24507df4a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "b281ac210d003e9443619040067fc62647dfb713401f9aa460a5f4d1617f85c6"
		end
	end

	def install
		bin.install "scriptling"
	end
end
