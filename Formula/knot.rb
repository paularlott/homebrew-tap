class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.8"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "99f4693801f89bda221109fa7ad785687f1e3d7c65011064e3abe0b20583f91d"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "a7d05b30a38bffb877cfae69a5fe9b7258165862b8625d7f5862c36262c956e9"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "529efcd457b593439c1e54dc0e83bdfd93c97993a84f5917fbbb3d1d38c1420c"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "c9beaa90c9aec4a1798cd1ec1286acb929e861a94556255610b6aa137fec0a7b"
		end
	end

	def install
		bin.install "knot"
	end
end
