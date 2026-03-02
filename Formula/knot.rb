class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.23.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "5fe659ceaa1d3a218914994283371eff0fbe257705bdcbe5317eed1fef0f1697"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "76fd7e3f852af4da2e0839161262bed65acb1c65ad4cebad3149001d58555ed9"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "6c470855b4621c5abae611e1c2c4079ea0bc3c607fa1da493c7d4096400d308e"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "b1decbeb0d3a6443ed19e569ec0a7a2134053f446601b3637c9fd30fc43cfd60"
		end
	end

	def install
		bin.install "knot"
	end
end
