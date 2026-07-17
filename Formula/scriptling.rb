class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.17.6"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "c395374323cec4273ab5a1f74814652aced3a469bf7c152f6a22ff5249ce71ca"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "03633a6fe0ea88bf7d5fab9843e6e329c4746ca318b4c52b01735c8b79a878cc"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "56a98297421087312aa1f80a30db077d0c02daa72fb5e0b804b232c9bd8e0290"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "7ac4274d334ee780ae2df5a61e50e7f1caece92734654532d6455473140390a5"
		end
	end

	def install
		bin.install "scriptling"
	end
end
