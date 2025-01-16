class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.10"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "fd50f04d66d8024b42d4762358d5a96e3ac16e7d1765d9b206b26d8818a7a50b"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "ab072a661868ec2f264d8cc63620b6055bbb62a0998d3ba32c91cf368890805d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "93eee8479d5c29296145a2d574540ee9fdf665cabcd7c6cc54318fa1c010d465"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "21a69965db2b295d4c0b460c1f51596f827551a163f8b62ba5a7456d83be1442"
		end
	end

	def install
		bin.install "knot"
	end
end
