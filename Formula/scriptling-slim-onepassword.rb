class ScriptlingSlimOnepassword < Formula
	desc "Scriptling with 1Password service accounts built in, without the database plugins"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.34.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-darwin-arm64.zip"
			sha256 "a8fffc1555e78a3e6e3711e5ac807b26b8ee7fcf4c338139d1315763671b5b52"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-darwin-amd64.zip"
			sha256 "6aa4fc15b9b8a5881f0826bf789b1a79b70d25201def7d76dff549ca851b0354"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-linux-arm64.zip"
			sha256 "a5b54222ec02b136fa4c5b7013e8c7509127c83c4fca86d602742cacfabdc372"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-linux-amd64.zip"
			sha256 "5a844b2b5044474c395efb8e12b125f752c6b7bc443499e490e3758190d5155b"
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
