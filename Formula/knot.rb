class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.17.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "983aa92cdd0b93c941728e842e424da836526c5f7ff1126cfacb111f9c365f22"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "8ec3936584de1ea477bac2084b6ed073961b579f275f422898d52234ce386d68"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "a4848d3455450aa70ba5da1a78d43787de26b75efab5ac7b7b2b2f2e9413ce46"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "817af8170407b78c949b671cccb982b2e871b04744160fa0b36a2c312c8dcad4"
		end
	end

	def install
		bin.install "knot"
	end
end
