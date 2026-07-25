class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.19.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "bd3477a6c5efb69dc9dc50971f6945ed383fc8e7e362104943264ae7c85b1ba4"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "324947da8d9fb566dce81d0d712c10b8b89f79aac9276e57f7e7a84fec2c941e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "9f4219c3ea411d8e9ec4586e093b4f7c40a6baf6e345288919e3659a09f293cb"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "43cff1d467dad1cc2f05f6c8c4c29e39c2762ee2e3740efd2f170117d6ba872e"
		end
	end

	def install
		bin.install "scriptling"
	end
end
