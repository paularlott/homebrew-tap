class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.3.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "9d443a50d9b9cdbdc7e8b3fbd0cdfd0c9e1192e17b1e0946b5950a0e8d522fe2"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "55776b57ab328d5c8d1f5207e791d084b447f74a575eaba402aa1a12cb480a7f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "a314f518beccaeeaee596fa75c064304b805ac5944c5f688deb86e2a886c1d15"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "4f5db8fd73311b32506153fb2331588613dc84bdb4fd019aa17b142db127488c"
		end
	end

	def install
		bin.install "scriptling"
	end
end
