class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.20.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "ee34d1dd79ddcb6ec398b50c3dcf406f84d30477c023bd734f473e2002ee8d46"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "1be9426a24a9f58c72b5f71cf94bab97f13d78122fad22154404003a362d99ed"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "14abebad06e4824f5ac478492d10301e72ada7645611a7bc4c3e9551865f8690"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "7f2141d09b953acb1c9b3031ccae23343f4242d02967b1a7148c8608681eda26"
		end
	end

	def install
		bin.install "scriptling"
	end
end
