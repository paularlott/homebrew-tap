class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.6.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "aca6151c4333f7901df30a65cd613fb5704b7bc68600029cf1dcb593510a8210"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "f8b43467b554f7bfefd0967d99179a0449a7c77e40549118ff00ca6b61a77a30"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "5c1984c6a32711117e263fdc994b946f9122abba86f599e21bd1c57c6385e67e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "68e7cba3e3378b1eccebe51fd61b53d068f59188a9b225a9f4ddade23eec7b60"
		end
	end

	def install
		bin.install "scriptling"
	end
end
