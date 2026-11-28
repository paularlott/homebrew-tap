class ScriptlingSlimOnepassword < Formula
	desc "Scriptling with 1Password service accounts built in, without the database plugins"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.45.3"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-darwin-arm64.zip"
			sha256 "32d8a16cb501dd2f97695e4c0b89b2520f52f1e65502d30222dd6a8a5749e78b"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-darwin-amd64.zip"
			sha256 "b853080121e2d9ae14132be9a2658178b1b474ee311551a1f5516d95a6eca100"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-linux-arm64.zip"
			sha256 "7282708a7509303a71ea24b34ed9d4607c79d1df3c337de411e103ce419705f8"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-linux-amd64.zip"
			sha256 "b4176951c23b4725368b57b89367feda6e1e2039a187e9eae4b863dcf006c1e3"
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
