class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and database plugins built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.38.0"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-onepassword", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "f29fb97014689ba4078f3dc67182286a17ed81fde27f23e391d9db3d88620ebb"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "31339e791aefd8ea16ed7bb002543affc7c188d4c1de6bde47557158a5348198"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "e894657f2933ed2f38ba5e9fef8492827f717ee8c4f05270c688e5f95e6e5dda"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "24ff3f41933df5123f40098fb16de610cde6431980b064c12e473f5e4204b6df"
		end
	end

	def install
		bin.install "scriptling"
	end

	def caveats
		<<~EOS
The sqlite, sql, valkey and badger database plugins are compiled in,
so the scriptling-plugins formula is not needed. For a leaner
binary without them: brew install scriptling-slim. For 1Password
service accounts in scriptling.secret: brew install scriptling-onepassword.

		EOS
	end
end
