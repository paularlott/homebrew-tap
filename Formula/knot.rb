class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.15.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "3de934602fe0a8f525b8333b58ce9646053b8464f3c5c48d2bb5aeec41d4bb43"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "fc0fc15f47af6b49adb2bf6fae8f472af6da1687e3a2d05c613f8e00a562069d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "3def212fe0e3be61554d5f7c17401a3630eb84b8bb45ee1add041dc0d88f7102"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "89909c374e814b15b6a74843b0e0565d49c1c63be2dd4a3ed69993cd65dde4ef"
		end
	end

	def install
		bin.install "knot"
	end
end
