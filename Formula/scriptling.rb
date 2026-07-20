class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.17.8"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "69635c857d85d2ed12cebadb958e4c7b1a490bb94b2a8c38785a9f5d0182c00b"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "d659e1e137fc69166274a8813a3527f249bd95b685513140c119dcf7106e14b0"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "7e388abdf11c3bfa7ff3a804ed26dc0a4ec6fc999e8dc566631ca7ec799a8b3c"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "daf834cc1d8a21e7d7ed484bfcff61cdbef5e26144eaa5f9dfda5ea3ba7c93db"
		end
	end

	def install
		bin.install "scriptling"
	end
end
