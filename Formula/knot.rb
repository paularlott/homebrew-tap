class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.28.2"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "95b66ea4147c2e7485548da573b461fe7789b404395ae1ac20f87558e1b4b1f4"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "97b918b5ed2d6791c3e069baf5a245405fdee705c17f5894673ebdbf2b997629"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "7b0cae3588016475251c2dad202584292c957ae1f2ba9b9e4da27090e0896e66"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "0f6845ad7913f9bcd159282025f7dce22e3fdd903bc8a8a4b6089329984ea20c"
		end
	end

	def install
		bin.install "knot"
	end
end
