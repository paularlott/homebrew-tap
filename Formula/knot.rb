class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "c68c9acb983068675b72a31833b492238935e11c0835f80f770792f051f735a3"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "3207db281ea06b10f9276e189c4d5f03a830d774d16b4314fdc071d3da65ff57"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "cc03e56ec417eabfd12b7f6e979e1517617b9a2975948fbd8d5c5d38f343d175"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "54d798da607cb6a7c5b0c94aa5ef52bb069a0830a91e47fa2deef331c291878e"
		end
	end

	def install
		bin.install "knot"
	end
end
