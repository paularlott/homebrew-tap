class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.32.1"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "06e65fbd20a96a796c52f2ce116ffcba67049fe56707badc3907ebf9805ca5fe"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "c07b7f5fe2791cb8ece8c742f26c1941197531605ff835b1df09eca20ec4a105"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "bf52c886492127998644830e5c794098558e3eb8a21cd8d5798ca3944a6e0ab0"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "e13716a514676dfaf1c7f63d704ebe43122e5ad4ae094d6d682f1f50033e1acc"
		end
	end

	def install
		bin.install "knot"
	end
end
