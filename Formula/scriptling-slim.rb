class ScriptlingSlim < Formula
	desc "Scriptling without the database plugins compiled in (use scriptling-plugins)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.30.3"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-arm64.zip"
			sha256 "5004890bd9696280baa6b157112bed9299b3399b46a43a70b0f5bb1855d87996"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-darwin-amd64.zip"
			sha256 "1ac7678f829ddb9daed37a8bf508ec00e66b2c27e342d62ce396aebb85bd3243"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-arm64.zip"
			sha256 "571b10b14c52b7e03105794d4b359f3c0ef3a3d7d967c4d00f8549a0bb9063d4"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-linux-amd64.zip"
			sha256 "e2ada0f4958cf1957366dc5582f36910942a944321d79eddf28e2e45c17650e1"
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
