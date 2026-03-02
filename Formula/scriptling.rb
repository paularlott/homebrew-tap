class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.8"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "23e68e6fff8f65cbd9ebd903fa802147c06efa84b76a3d46f9f6d98036409e2a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "156c51492a7dcbbdf5451f141e8a68b37ace45b800de7b67377d7d4efd9b1831"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "8d0e9f356c6c9162958c56f3c612046f7c3c6377180eb755dfb3d695f70a037f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "eb7664d0afc48a10a3a95178f2157309d6a8cb4779be1aadb7664893f50c9b8b"
		end
	end

	def install
		bin.install "scriptling"
	end
end
