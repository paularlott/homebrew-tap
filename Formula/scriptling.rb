class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.5.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "dd97bf99a19c68bd6b36d1d07792c641901e0904cded5b2d90e130b605d8fb24"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "e54cf167440c65bed3a19309e8eb7c9dbc8dfb3367a5e3fb4255a2627f9e0fa1"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "450c8467d104388d10f15823cf7bf86f6015ee1bccb8f6711a36d7477c4427f2"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "510c1bb722bca62ca74f462357e728beee9a931d4beb15278f1d1d6edbf63e1c"
		end
	end

	def install
		bin.install "scriptling"
	end
end
