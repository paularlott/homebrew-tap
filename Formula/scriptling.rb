class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "26e7ac4cd776d31a17f7c319e4193e47fe3d90bd563035c9bd9a1b46348f2f8e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "f515c39abd34c784eaff54c2881db70a9a311e709f6dc24b71a9c8864f67a914"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "700375f3cb17800bb06acb3f2e829feded0d76bb898fc18fae3f340418a95712"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "c02600eedf1f77fcd2c2612017f86ebba3c0fb20bad0ffdd617b85d290e1bf0b"
		end
	end

	def install
		bin.install "scriptling"
	end
end
