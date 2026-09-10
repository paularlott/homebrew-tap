class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and database plugins built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.25.0"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "75d50a7a88706a594dd0804d1b14e23bef86d926c925c02920be32cf27fba887"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "d844f5be964460979f37af303f4b1a72e75d8dd2dd63eb5d316df92cbd920cc4"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "94ac928fdd9a9eab643e9e7e9d0c8368d619e23c8e8ce6d7e264555273f07956"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "8f1a4a1c3af045fb0c869650c54ed8b91a5c5d0c3cedbcf3bd24c4510e95691d"
		end
	end

	def install
		bin.install "scriptling"
	end

	def caveats
		<<~EOS
The sqlite, sql, valkey and badger database plugins are compiled in,
so the scriptling-plugins formula is not needed. For a leaner
binary without them: brew install scriptling-slim.

		EOS
	end
end
