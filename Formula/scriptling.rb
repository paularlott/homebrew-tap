class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "c0f249893203d3cc6197dc4a3b40e4379fd32f37a845e309e8d4aa237be4a86b"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "62323c26cb3b549aea3350db3103fe8d9ea53f4f94df6aaa6d38105c28907479"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "9303103144dcef634afde3d673033155b7ccfe28dd3919cb11203665095cade1"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "56c343024b7eff6ff51969eba2fc599c50108a01a135a50ce1e33a0117d1b5cd"
		end
	end

	def install
		bin.install "scriptling"
	end
end
