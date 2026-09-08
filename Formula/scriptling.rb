class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and database plugins built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.24.4"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "f45ff9507c0bf0418246e936fdf5d59824de581b8999914c4e37ca9fb0df3fdc"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "8663eb584947e7fa9c32083d0e7e588668999d4f83ebe598bf77142f841a584d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "6ffe6ec780d8666ae43c9537785901c4e2940674f192eff5eabe613bea2a890d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "3e3e3a0150b7dd5db03c1a529312818ef7af69a1619dbeca4c9a9320da8fba06"
		end
	end

	def install
		bin.install "scriptling"
	end

	def caveats
		<<~EOS
The sqlite, sql, valkey and badger database plugins are compiled in,
so the scriptling-plugins formula is not needed. For a leaner
binary without them: brew install scriptling-slim.

		EOS
	end
end
