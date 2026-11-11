class ScriptlingOnepassword < Formula
	desc "Scriptling with database plugins and 1Password service accounts built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.38.1"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-darwin-arm64.zip"
			sha256 "53bc761cb124ee2f3ac9cf178cfefdddd7437f8bc313a8f2622b4aec0d65c94b"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-darwin-amd64.zip"
			sha256 "08ec393fa95a7ab4ed359984fe813079a9d29cecdc556dc29a68c197ea36c542"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-linux-arm64.zip"
			sha256 "526ec410d99e8b41a6b1c1d65ccda1d9306eaa5e1ded9c0e4509e07a00cd4b05"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-linux-amd64.zip"
			sha256 "5290a9b4f4083c993670a2cf23f8a3c594f00f06f4e3fbe2dc484503d20d5a74"
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
