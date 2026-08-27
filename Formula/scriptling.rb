class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.21.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "011f89b454bfa2b434689868273d64c248ce234a8a0a0a7d7ad99720eeb97c97"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "1532d6f3d0b6de045f33608a4027940d99833d2c42c3dcb7bac664be84af05a5"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "b59fb334ce22a23e3e926babcf8505377a1c3cb42931dd270e01ede39a519984"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "94d3c8e00c13433fc4b8eedfa194ea17be0bf48a72818c96304d9e577741aae2"
		end
	end

	def install
		bin.install "scriptling"
	end
end
