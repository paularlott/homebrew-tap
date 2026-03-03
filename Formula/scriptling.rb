class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.9"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "4d363b2e71863700b819171f91157cdf1320e0412cafbcc12088f35acf880966"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "a67d171c7899d7aa98bf83ae771e17e9dfda9ac6f70b6a15653ba2d0793d2be7"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "650e391e4b4f08a0a6ef330a1884a77490f43187ba5201dbbaeffdae5a212ffb"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "07abec29201a77dc826883794e6a81da6c7312b20a2f8cd1f7440ed44e47b57c"
		end
	end

	def install
		bin.install "scriptling"
	end
end
