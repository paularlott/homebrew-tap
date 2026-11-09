class ScriptlingOnepassword < Formula
	desc "Scriptling with database plugins and 1Password service accounts built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.36.1"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-darwin-arm64.zip"
			sha256 "5a8024a2d357b012deec624053cb3da4b53f2b0de9967eb437d293ead5cd92a8"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-darwin-amd64.zip"
			sha256 "8d8c20d97a89b9169fc6c8caa3fc706dcb7913a32c270d7b94a53dcf04cba2e0"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-linux-arm64.zip"
			sha256 "e9b2b6c5c00e50b9327669100c95ae1c8215dc0ae8fca97a20b1fdfce1d47db9"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-linux-amd64.zip"
			sha256 "ecfcec79f5c4bfb81beff8c9f3758c509da47430aade2a44be79c891fa8b7ee8"
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
