class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.26.0"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "e199e2dbba75afd15455046bca8749c9d18459c70583af8ee3256d1042f41224"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "b723ae36175b197df3ef94ce87b8de671d2fc5254aa71664dbe538755ce2e496"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "0eb2ff707730fba5fcc2466c6ebdc7236c7196d07aa03ef5cffa182d64be04d9"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "8c136f3e0703c19372c605ff6df685af28c70493730ed13f86216eabfde33b8d"
		end
	end

	def install
		bin.install "knot"
	end
end
