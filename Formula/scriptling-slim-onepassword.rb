class ScriptlingSlimOnepassword < Formula
	desc "Scriptling with 1Password service accounts built in, without the database plugins"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.33.0"
	conflicts_with "scriptling", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-darwin-arm64.zip"
			sha256 "538a045b31d9ce1a7e0d4caf9b671f02f034b55def33a7affda1f5b3313a943e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-darwin-amd64.zip"
			sha256 "6b128e8c10c43c3469a5f1709d5ee0da3af60cafddd545d1f6f90a0542d6113d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-linux-arm64.zip"
			sha256 "e7c394da4d73c5c42e3e4b9d66c9d98f8db319d5619a1551de7fa8360729ab31"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-slim-onepassword-linux-amd64.zip"
			sha256 "2fb0663ea041dbd743ce466f870ba9353f700f1f94b9fe33fa20d8d847d7257c"
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
