class ScriptlingOnepassword < Formula
	desc "Scriptling with database plugins and 1Password service accounts built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.36.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-darwin-arm64.zip"
			sha256 "701a95633373fd48bc1f85094e508ae7676bd082efcf21899a76e1a142327748"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-darwin-amd64.zip"
			sha256 "98416bd528fb0709c6132395ddeaa657c14f7fe436bb5262ee5de88723298fab"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-linux-arm64.zip"
			sha256 "7e338673a27a797a3e69086cc1abb21ef3649f5ff55744eac4b34fbe0c621fd8"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-linux-amd64.zip"
			sha256 "7dbc6e2b19d394c17e45e14dd4e39b64525e39fd20a44c3a6b0c71df28559254"
		end
	end

	def install
		bin.install "scriptling"
	end

	def caveats
		<<~EOS
This formula installs Scriptling with the database plugins and
1Password service account support compiled in: scriptling.secret's
onepassword provider accepts service_account_token as well as Connect.
Without the database plugins: brew install scriptling-slim-onepassword.

		EOS
	end
end
