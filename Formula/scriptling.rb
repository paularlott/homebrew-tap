class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.21.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "54e1a25db29142e82024088257eceaad4eb8a37307b6a7bd13adff9584f5112f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "b9564b56d698e21482fdabf8930807051d6b3b4f4dc9e5fecafe9f030657cb34"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "69f36fc526ee7c28ef9a5ca62d1595aba2d78e68d95035062c59c7a774ffdbd6"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "03fe413424faeb336d5c9b81eb7f2ee1dcf3696184a712006f43065dfc3f3393"
		end
	end

	def install
		bin.install "scriptling"
	end
end
