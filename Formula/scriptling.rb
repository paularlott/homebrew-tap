class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and database plugins built in"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.32.0"
	conflicts_with "scriptling-slim", because: "both install a scriptling binary"
	conflicts_with "scriptling-onepassword", because: "both install a scriptling binary"
	conflicts_with "scriptling-slim-onepassword", because: "both install a scriptling binary"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "a4ae2ab7b5d5a1940927d16f643ebf5f855ad29fbbb251863e8dc3e46c9f151d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "8c055fecb2ac2848a8fc89fa457d94db5b5ed7c37531b86fe397aad2a6715ca3"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "c2348853efa8905b55bcaa42f8a8ab9d2cd2ffca436ef4e886205abe192ddb45"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "543322bab68078321e8343f74e4c2188756d12d9eb7dde7edd32fad0b12cec3e"
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
