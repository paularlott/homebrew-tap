class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.21.9"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "c040707ee0bf88ef5088f35fb6a184786d459afb7ea67c5baf53e23ddf85844f"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "70d9a3dbbadf6e4fc9ed8cb7d4284953d3a3b59e7d0020e100412c1d78cefaad"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "bcab1242cccb4e2ffe3e886fde073ae32938b9513b87bd00e26a166baeb48f38"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "5ef48f85e71a164ddc554ba937351e32aab2aa0f5ab78d76799d574816929e6e"
		end
	end

	def install
		bin.install "knot"
	end
end
