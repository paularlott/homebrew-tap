class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.7.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "f68b34b250679b013e03226d4e426419e4cf8e169091f176958207670b109978"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "c0037518fe35d7f59d65bbf8ffb1625e94cb54105c44e3f42b6315ccb5045081"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "db77655f811cb17a52785a7d8d6bc588f66ca22469da55f7a05ec876fd90ebde"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "555d57db373e530c684ce03870da566ebf7baf0e64afc75b59d17b22d4fdece6"
		end
	end

	def install
		bin.install "scriptling"
	end
end
