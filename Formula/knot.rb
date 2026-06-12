class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.25.0"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "766c757962800b6ceddb1f6e424257c5dd2bb3214ff07a21fc0139a7a2dca4eb"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "6aab5fe794a9076041e3ec582c869c811fb2597b990aaec098ad1ae2f0bc1f97"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "297ed8b2eaf9f3790f868ef670bf44a97063a65c1dbdd6e800c67276338738c9"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "88200c150c959ed9eb771861730c67cb093efe7fc4588e561d78f946e71500ce"
		end
	end

	def install
		bin.install "knot"
	end
end
