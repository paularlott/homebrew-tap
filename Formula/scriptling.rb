class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "c7188aa95283169408cb315f49bab1a8c1b057ce685c7a4e9f1b4a701ae39a26"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "dcbfcca30a26a38529c1a6f3906b2610fea536cea1456fdb266b31028453c18e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "1ec88f59d25176cd39393295d15a82c91a504050024a548ad6e94765bedcedf8"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "b1386b600206d25e66deaa44fcb4f8ca339f7da1ebc4f76329c344829f75e268"
		end
	end

	def install
		bin.install "scriptling"
	end
end
