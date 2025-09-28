class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.19.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "f2b3d76156c15758ab4bf82a2117a48ef7cee9333e474376850b588b281dfe36"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "7672743aa04a6a7a09a567f7e91e78e06d4e88bbb90322c92917c1b3959056c6"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d6e2369bc3a8d5ad262224fd1be9c6c7878706f6064beab6149a54c82e01f8b1"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "5b2fe844d2c77e752a953652f90b10f780d7aacdc1e53f1feb9d6da7f691adaa"
		end
	end

	def install
		bin.install "knot"
	end
end
