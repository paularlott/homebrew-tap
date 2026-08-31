class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.23.0"
	conflicts_with "scriptling-full", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "b4e559f8037c5685a57e48aab5aa02766d545d4c4fc1cf0a6cea947876dc3dc4"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "54dcf28579dcdbe9577925014ebfd31660e33d2f4c04e963df823b7c5a0a1e0d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "48477dd86e53c7b7861d44142b3e7b915a18c7154a4aa51e54985964d85242a7"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "7d6e605b581501a389b88a0388462e2127acd0d4ac3a5f64e37fd4974f59d2eb"
		end
	end

	def install
		bin.install "scriptling" => "scriptling"
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
