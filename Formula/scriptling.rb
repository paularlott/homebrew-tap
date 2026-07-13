class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.17.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "2fd1d8b56d34b90aa279c08e09cc10da6eb817c39f784157a6202103fa6e16e7"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "25459119f244b67915dcc90a22bf38838f5fcf105e6c9b680af3a27fcba12f3b"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "25af19dca00c3b3c3c3d758d8039ccfff8da80b98060a521535b1e497953eb73"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "c6bf930f891d46c5df422a481054c9959fd72bf0e0b0d3e5e96443d8dd5a4cf4"
		end
	end

	def install
		bin.install "scriptling"
	end
end
