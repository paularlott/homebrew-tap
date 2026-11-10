class ScriptlingSlim < Formula
	desc "Scriptling without the database plugins compiled in (use scriptling-plugins)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.38.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-onepassword", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-arm64.zip"
			sha256 "8fd9afe6ad2cce581448fd4144b69499711d30fe289abba2eb021490be7bb48e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-amd64.zip"
			sha256 "0be8419b5837cfd4039ccd5d1506e7edb2c1e034861e2e0f553799be4d816a61"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-arm64.zip"
			sha256 "b6a53e34cccc85d1f8ef550adc7a934f37638d81bce97375fe0af6972144c3cf"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-amd64.zip"
			sha256 "5ef791ae9ac0dad40c012e2e27bda7d8f241d063ba625e2fa054d7ffa7b74778"
		end
	end

	def install
		bin.install "scriptling"
	end

	def caveats
		<<~EOS
This formula installs Scriptling without the database plugins
compiled in. For the database plugins: brew install scriptling
(this binary plus sqlite/sql/valkey/badger compiled in), or keep
this lean build and brew install scriptling-plugins, then run with
SCRIPTLING_PLUGIN_DIR="$(brew --prefix)/opt/scriptling-plugins/libexec/plugins".

		EOS
	end
end
