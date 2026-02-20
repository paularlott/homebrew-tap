class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.1.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "b6e3cee63d84994d2283577ee2b81adbcf8c1071d6e23c2ec13cb6f6c86c9689"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "ae8c349d4e64b77ac3404fdb56b541e692f551b33b10ac3f39849591dd1c46d6"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "3915c7ca547c2bc366cba6200c6be6fdc84f41772e8af306c9b9842a4d80a5fb"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "280f7f3e94c133f5ca8864e29a285bf46355c802bd569c7362d9c4d2227dabbb"
		end
	end

	def install
		bin.install "scriptling"
	end
end
