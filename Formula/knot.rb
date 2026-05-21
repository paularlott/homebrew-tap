class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.24.1"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "93cad896ee7bb10677910e2c3d9c9262da5203689edafd5bd1c9299171519766"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "4d4769a8ad5b8787c2fe93f2e6391b1b7cf96d2f58c777557947952f11e57fd2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "18de0c24cca432499f648a59c10a3df715bd41059919e6ebccbffecec2a001a9"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "380b192bae5f46e8e03458294899249f8113df90101de69a9b5131ca48dbfb51"
		end
	end

	def install
		bin.install "knot"
	end
end
