class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.28.1"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "9535b35b8f7de80c57a6220a54767d26a3965492035e8e5d9a2f23a24d210034"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "e76bb4384b54ca88d4fd372c4ad1d180f6ce61f2f2f9bbc9f77e83fa59fccd5e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "4042f9764cddcc4e73297cbf62952859d6f82c6b2240523df9174b9ab04104db"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "298fc086c500674f8a075aa3a0f82065abc12af38f49fd4144be55593998b725"
		end
	end

	def install
		bin.install "knot"
	end
end
