class ScriptlingFull < Formula
	desc "Scriptling with the sqlite, sql, valkey and badger database plugins compiled in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.23.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-darwin-arm64.zip"
			sha256 "635b9de16ad0cede0a2e3ce5126ed1c9e32ac50cc2c16ed7592732901ea53811"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-darwin-amd64.zip"
			sha256 "41a7ff3ff1b088420b02e9eaa0bf4610b4aef6bfec25d3e690e7eea271cef981"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-linux-arm64.zip"
			sha256 "0827881f575596a2ef02cb9244ece661eb35ca5d1d2fc9390ffbdfa8f1f376dd"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-linux-amd64.zip"
			sha256 "a7b7c1d0de41d9328b0ed4ff4b3a698b2322298fbdfa89e8194409854b292e0c"
		end
	end

	def install
		bin.install "scriptling"
	end

	def caveats
		<<~EOS
This formula replaces the plain `scriptling` binary with the full build
(all database plugins compiled in); brew uninstall scriptling first.
The scriptling-plugins formula is not needed with this build.

		EOS
	end
end
