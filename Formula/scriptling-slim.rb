class ScriptlingSlim < Formula
	desc "Scriptling without the database plugins compiled in (use scriptling-plugins)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.24.3"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-arm64.zip"
			sha256 "76cd5d83f0cdae06c6be3cef1d9ea2686ccc9b986691b3395ec1924b731cb911"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-amd64.zip"
			sha256 "243133fca7162724358624406da068bef5b9087f349c8d559f3d0f1189190fbd"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-arm64.zip"
			sha256 "57564cdf1c02b46104ab7c2d32ac99b39a3ab2c0d86a3c2f18bbba679b0770ab"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-amd64.zip"
			sha256 "e900b64138b75c7cfad00ee14e21446c137d765949f3bf9c806294488da4583d"
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
