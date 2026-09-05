class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and database plugins built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.24.3"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "0e0d1d5d81f6af2d73b3e47999d95131fd74b112533ffcccab2eed23ffc89466"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "ecbdfb0cf06c4f556bcde0b2b4a8b2e01ce91bc5b138c6de42a9bcb1e0b0205e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "f40f3726c99ff991a616a5b71e8dc9afe4a3d5e88cc80906d3730414a90b78e6"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "c123587f64a23c94ecfad95f8c2abca1d3c5285130984b52a0ccd54d0e76f847"
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
