class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.22.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "056e49e58a9fb7c05e6557880afb247d44f788b83394eb3bb37d9445a42942a6"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "f94c6f3cb52500eaa8021a7fa67b4f049246aa5eb851506424988a18d20fd2ed"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d280156ec7ae042c2eae16562b086fe7516f67ed31892d008812169ef7d6a09f"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "4be6686ae74c477d07dfab89f1350c4e1600f5fb80546a5c769cf0aeca1829d0"
		end
	end

	def install
		bin.install "knot"
	end
end
