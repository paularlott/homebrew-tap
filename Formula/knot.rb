class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.32.0"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "7c6a4beaacce9896c2994bed12cd67d658f13891fdd6ec9c424c0702b0d05b8c"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "fe5865d95f2f74f75edd623391ec300f4015239aee0529614743e31ba80540b9"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "52c168499f39b7603e318b2083558adeab374520b5bb6a02f2966893e7640e39"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "c53f3088bbeda1541e8d8617e054d2508ebc5a5ee4bdc4e4e51316920d843b18"
		end
	end

	def install
		bin.install "knot"
	end
end
