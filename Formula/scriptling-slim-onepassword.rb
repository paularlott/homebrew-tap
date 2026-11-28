class ScriptlingSlimOnepassword < Formula
	desc "Scriptling with 1Password service accounts built in, without the database plugins"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.45.2"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-darwin-arm64.zip"
			sha256 "c52bdd6ee35821bc00679d79bb76badc317933d942d9d41c288d08a9f8a12a23"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-darwin-amd64.zip"
			sha256 "a5fbf9ac9b774db51cd413d03e73935b88080fab547053cb14185b14eaf9967d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-linux-arm64.zip"
			sha256 "50b6cc3d0d558594be4527c1d490ae63e0ebe74d8b9585e736165d34c3c8b84d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-linux-amd64.zip"
			sha256 "8b6d28755740e2c5167aee38d9f4b2a5f1c7125b3b4732bb58556be927d68555"
		end
	end

	def install
		bin.install "scriptling"
	end

	def caveats
		<<~EOS
This formula installs Scriptling with 1Password service account
support compiled in (scriptling.secret's onepassword provider accepts
service_account_token) but without the database plugins. Add them with
brew install scriptling-plugins, or install scriptling-onepassword.

		EOS
	end
end
