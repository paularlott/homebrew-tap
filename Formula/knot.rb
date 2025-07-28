class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.18.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "1d7cb1fbb4880df61d317d64c3e34c69159aaa66b9dfaf8fac4476ccfe7a1b2f"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "dff3678a0a761951ce915578a0bd04bc076839283e288e54d81329f7ea50be04"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "51dee6f599227c93ca0647372558c5787db9a6add8a61974422f5d2d57952f67"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "0baedad1f046de089b8d64180c3674e8a9ac6e91149b73aba298640674aa60aa"
		end
	end

	def install
		bin.install "knot"
	end
end
