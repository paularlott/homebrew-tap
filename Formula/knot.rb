class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.30.1"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "b364e47de08ecfab94340cc833cdce44b39f6d67d247af3c0f5da73a8adbc084"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "23be6f5ba8b2a71f47cc01c67a5b33a15b44eb8be42d84997b3eb8dcb17cac23"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "5a2d8bfd0cdf16beaaf4da91ee7404b57417225e8aaf4635a4c646bdecbd307c"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "fab0b58c25ba9958e976397d9cda769c4f61689330b531fdc54a5c28e91efe48"
		end
	end

	def install
		bin.install "knot"
	end
end
