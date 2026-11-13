class ScriptlingOnepassword < Formula
	desc "Scriptling with database plugins and 1Password service accounts built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.39.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-darwin-arm64.zip"
			sha256 "ad54ae415d355f9d402d83f5994da818b4e20650fef5a83b760b9769b3b5d68d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-darwin-amd64.zip"
			sha256 "d3cc3771b123949df1dbaf0017b8cc0bccb42b5ff0e24439ea398c0d05be4d15"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-linux-arm64.zip"
			sha256 "4ecb13c4bd6a75ca13166c2acef1d0c0790d9dc64db1a7b31f58824587a2ec6a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-linux-amd64.zip"
			sha256 "61657b2053fb67019ad3e5f2d60c66749403207a3030c2bb9f5e866552f0c81e"
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
