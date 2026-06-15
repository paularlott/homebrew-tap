class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.25.2"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "e0c4926e3a19ad4e61c875cd33a93337c2f9ce958cf01469c2d9433ce3a72440"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "6c3dd28ada2fc4a1b39f3f2fc441ef1915950dd2dee2ef6ed2c38d29d45f07a4"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "7f2f4662ea95960531ec8a702c8b92d3a97fb39b9dee3ed28b3ccbe427b195a3"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "3f41edc726cc42b3fe505150e91e58b146096f46863722c8f73f2b9bd2d80c69"
		end
	end

	def install
		bin.install "knot"
	end
end
