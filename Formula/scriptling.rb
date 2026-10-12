class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and database plugins built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.30.3"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "4265ce2731bb31ad8516017d21969307a6f57e67beb7de4c9e7002352912946a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "5c400bb3c85a080ed11d781b56ae9b6e03c4e160a2f077821925cb77cfff8562"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "73c1227d98e9bd79764d4f069f159bbba7041af4d578ac70d18a9dc25f7ec408"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "ebaf069fcf17e63084343b04d42391a53aed59898b2b9d68c3e3cd8f180eb367"
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
