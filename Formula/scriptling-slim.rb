class ScriptlingSlim < Formula
	desc "Scriptling without the database plugins compiled in (use scriptling-plugins)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.31.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-onepassword", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-arm64.zip"
			sha256 "0ee950934cea0d034d84403f84954c70c9b0e4b219eca497e4f3e9755976411f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-amd64.zip"
			sha256 "66629628052deb93469dcadcc3c18758c7fe080dfb50a3a11a0280024bfd3044"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-arm64.zip"
			sha256 "b09c1dc4a4464be7b1a5b89e9f7553732232d0e3baa87b212ef879e688845568"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-amd64.zip"
			sha256 "43e996b6b31f55d02200f5ad8e212a4dcc7cc73966d6b7858767bb07a3cec44a"
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
