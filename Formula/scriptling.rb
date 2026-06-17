class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.11.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "1608945c5d077ade9b773392fd7b72c584d6c12109f4385292dd4bcabcca2ded"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "ec1491f75cf396621491e215449f6ff4bae878fc5c7ac2b0700249e84087c3ad"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "8f29cced2b34ba066dccf5045c25c883f9e21d195acec2bcdbb6bdaa5b138570"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "a9eb2ac661537c8a4426150e86cdd50990fcbc9f46de527a9de162bd757bd72b"
		end
	end

	def install
		bin.install "scriptling"
	end
end
