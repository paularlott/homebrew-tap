class ScriptlingFull < Formula
	desc "Scriptling with the sqlite, sql, valkey and badger database plugins compiled in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.23.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-darwin-arm64.zip"
			sha256 "453ab465e0923c50b6b8cc0513276a1e49a8caba09a23b405ecb891a3de8ca04"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-darwin-amd64.zip"
			sha256 "f8c84cd447e98bec3754cee80831d27da832a91629988c8572091625a3f133d7"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-linux-arm64.zip"
			sha256 "055ab526a00742b862ab4b6dc5c18f08280db4e593ba52050380f1cc6ab9c50d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-full-linux-amd64.zip"
			sha256 "fd48bbdeafa7e0a92d5ae239dc590853c80925162e21f173b73cb5b0668fc824"
		end
	end

	def install
		bin.install "scriptling-full" => "scriptling"
	end

	def caveats
		<<~EOS
This formula replaces the plain `scriptling` binary with the full build
(all database plugins compiled in); brew uninstall scriptling first.
The scriptling-plugins formula is not needed with this build.

		EOS
	end
end
