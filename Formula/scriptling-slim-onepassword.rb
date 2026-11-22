class ScriptlingSlimOnepassword < Formula
	desc "Scriptling with 1Password service accounts built in, without the database plugins"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.43.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-darwin-arm64.zip"
			sha256 "092d8a8b254176de9561313c5f097b5d4cdda9151623e9732ba40b4578d55f62"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-darwin-amd64.zip"
			sha256 "4ace166e4f4349c6b0bf9798ce3fdf5cda98456a05111f0b8616ed859c443a90"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-linux-arm64.zip"
			sha256 "e700d5d46bdae6100341a2a77ad888ab9fa7a0de4203afd6ea020c89dfe99144"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-linux-amd64.zip"
			sha256 "31f802cd9bbda3eef734dfc69a335d581654ee5cf3cf57ba5db7750fce5bc6bf"
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
