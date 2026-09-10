class ScriptlingSlim < Formula
	desc "Scriptling without the database plugins compiled in (use scriptling-plugins)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.25.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-arm64.zip"
			sha256 "a0a00a8e36580fdb53c65bd9f15ac17c0939af3a8cd83f4c08bcc8ff55b357b9"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-amd64.zip"
			sha256 "e301da61a04c01fb8fa6d8efd09d23f9d1ec1714c4ea9bdb70d2b8d2cb5b9eb1"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-arm64.zip"
			sha256 "ed6588e73fdfa7f4f443436deadab3314e3f6c3657c3e8eeac0f16d228cd2ab0"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-amd64.zip"
			sha256 "1121bce7d6c4fdec884776153a67ac427154c125da5864d088d51f0824ab8297"
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
