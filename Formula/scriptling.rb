class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.23.1"
	conflicts_with "scriptling-full", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "8a82aea07eb10cb9427d6545584039655fd5c581b0320e40a4ae7249602cb554"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "04caeef73006bec2a7d3e1ce2ff12bae2a4d84d1fcccd12fa0f927c501cfd7f3"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "0c8ed10d3b9ef2d699f8cdb4310587503ec43166264d7b93cca92032973e5bfe"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "fe3296ab4549aaa819f4d89dff4589f8557bb8695b273dbc7772b15003e5c3c8"
		end
	end

	def install
		bin.install "scriptling"
	end

	def caveats
		<<~EOS
For the database plugins: brew install scriptling-full (this binary plus
sqlite/sql/valkey/badger compiled in), or keep this lean build and
brew install scriptling-plugins, then run with
SCRIPTLING_PLUGIN_DIR="$(brew --prefix)/opt/scriptling-plugins/libexec/plugins".

		EOS
	end
end
