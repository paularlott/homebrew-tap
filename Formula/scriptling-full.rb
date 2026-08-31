class ScriptlingFull < Formula
	desc "Scriptling with the sqlite, sql, valkey and badger database plugins compiled in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.23.1"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-darwin-arm64.zip"
			sha256 "70f5c9edbbef85e1f124a05836b546604f067a6741bd2340c4e281f84d14fd53"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-darwin-amd64.zip"
			sha256 "c3b57e65994b8a483b31a30a8c6519361b62d65331327abe49e4d0d455a9de6e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-linux-arm64.zip"
			sha256 "faa825d8b7a94e99cad59fd6561527f46eb5b845866bff85dc6d1182ba233cb8"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-linux-amd64.zip"
			sha256 "6151ea1f056ed5b87a58688bb8646e5cffa79e19a5d2744297c95c7bc0ecda6d"
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
