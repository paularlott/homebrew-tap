class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "32d5201d8a580b15a1eef6182132ec532bba92707a51f8fee1a01873843e0464"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "c28d37bc81cbfed597f38ce4d06a5f7856d2c4f7767e56585208be1e7a1158bf"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "c53609c6a672b5f0b2d283857022041390d36f1cc3c40db914399577dfe7dcc7"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "5cc2415fe7e78cf05d16b7274dd54306d6016b1f6932650f40f983578f4dad36"
		end
	end

	def install
		bin.install "scriptling"
	end
end
