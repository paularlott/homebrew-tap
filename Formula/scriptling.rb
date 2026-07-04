class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.16.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "330d7491944ebba68c66fbbbdfb1d673176255125c7845e77fc6237810aa664d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "03df64a9ef1ec6e967e31b622e2032be1b9c077408f5b90c8a288100f74dd9c5"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "306f67a2a4fe37be71480f2da67d86975d8f754d796ba2a3902054f9e1ea925b"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "38c76cf372bf0472cd388c85dd620bcdbdd0a0fce0a69b6ed5b042cbda708447"
		end
	end

	def install
		bin.install "scriptling"
	end
end
