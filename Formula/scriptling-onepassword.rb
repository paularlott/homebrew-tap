class ScriptlingOnepassword < Formula
	desc "Scriptling with database plugins and 1Password service accounts built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.45.2"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-darwin-arm64.zip"
			sha256 "ae7afdc8fda5b594a7f9513466638cf759857f798df23f440e97d0a269e70e12"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-darwin-amd64.zip"
			sha256 "76243db8ba971552dcdef7ba1cc8fe2afd4289eb405d2b5a61a0357124ed8315"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-linux-arm64.zip"
			sha256 "9eb1ddaf088f5c33c904c68ad1bfaf764f85dbb68e05aa77d0452f67d28e9fe3"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-onepassword-linux-amd64.zip"
			sha256 "08c8d7872b5452ac54da5b34e044b276142ce95a934b53a67977d2801b07a82e"
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
