class ScriptlingSlim < Formula
	desc "Scriptling without the database plugins compiled in (use scriptling-plugins)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.24.4"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-arm64.zip"
			sha256 "31514bcc495a80afe95f319b3d3e9d23bd902779cf78726031e9f4b01baf9638"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-amd64.zip"
			sha256 "52b6ff931a75e8840152fdb3e49994513104ca700ebe525eaca9a0f0fec31e1d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-arm64.zip"
			sha256 "270a99ffbc39a3346077715c873c779a9204a1f474cbf69439ddf705210cba7a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-amd64.zip"
			sha256 "59df104bebbcbd371c57b15b2e3192d0124fefa83cca22f5cc89ed48ed7d2a41"
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
