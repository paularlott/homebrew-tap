class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.18.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "b5312b1c87c19b538db354c5c2985375e1d3223903efe9ee5b95c63301ce7c6c"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "428b3a1df07a22aa50ce0b859e8fcf9a5d4c9ac008f24b728550f4058bf1d010"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "d9419e51a00a0d86bf6ebfe449907fd9f04d4d694cafc1dbcb7789ae714fb52a"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "5bf615af854e26646ff4acc3eacc3a0c51d21e0c08d65ffdbc4651c8d1a17a13"
		end
	end

	def install
		bin.install "scriptling"
	end
end
