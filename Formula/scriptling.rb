class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.23.0"
	conflicts_with "scriptling-full", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "db46400d5776690d89343fafaf3351bc07d3e04a9b25a92a728731ed309efa28"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "df8776324c3626eb76cd8188962e1287dbe578065b79b1428c21895f59d27259"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "33cf681ee03318276223590bd46d4e61b30673f49e0aa5951ba412488af8ad4b"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "17f506ce79580fe8c45e572bef53827910667e08c27ac2c7d8ac06375f693745"
		end
	end

	def install
		bin.install "scriptling"
	end

	def caveats
		<<~EOS
For the database plugins: brew install scriptling-full (this binary plus
sqlite/sql/valkey/badger compiled in), or keep this lean build and
brew install scriptling-plugins, then run with
SCRIPTLING_PLUGIN_DIR="$(brew --prefix)/opt/scriptling-plugins/libexec/plugins".

		EOS
	end
end
