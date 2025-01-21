class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "234a89da956be79d7ddf60774ad3567d74162351bf2d1b79d2f873fae914761b"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "319b305302d485bdbdf226f7bf90feb20d2d65c5205f69f62c3501b1cfa88643"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "8463f26b00fa3b58bce95959af2a7e062998d4c90867bbfb1851b3fa9ec69dce"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "3e686b6447165317dd8311ccd989ba6a0b753dc54a275a59691076e9719c0da4"
		end
	end

	def install
		bin.install "knot"
	end
end
