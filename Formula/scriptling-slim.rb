class ScriptlingSlim < Formula
	desc "Scriptling without the database plugins compiled in (use scriptling-plugins)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.32.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-onepassword", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-arm64.zip"
			sha256 "819b7545bb26c6815a03f85f2b6ecf208140df48e4b077f9f418dd6002b3f52d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-amd64.zip"
			sha256 "bc8764c45afa27206fcc5423853d319b54201a0224bbcdc78fea4bb2da6f85d5"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-arm64.zip"
			sha256 "c71386dba9535cc1bb4b51ef14feb17da50c03bfda8c0d05939bf6093ccbedf1"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-amd64.zip"
			sha256 "3439f6e3f6721267839ddbc1472f42c00b3a454e30070705d7d8e327fd7c7215"
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
