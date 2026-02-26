class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "5df2dd6de2d8ff6a56a46cea4cc09051d4d5c005bb569ecb7c53fb62e36f5318"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "51d18114a5bf59dc582766c6c94eba3c70382ddccb8e91e57b50f13aef453206"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "53b87b36a282fe5b51ea9ff5b3adaa69d1802e17769e25a4d0968e47fadef1d6"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "9de6b2d621a8d4aaadba961b2c18e5364f875ca542bed77072c709f08fc18f34"
		end
	end

	def install
		bin.install "scriptling"
	end
end
