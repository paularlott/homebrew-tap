class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.26.1"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "48b6c8b7bc12a91e4d9e45457edb55af7813e390809b080d10b14456fe408f09"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "835aa0bfb6a26dd7cab56eb71169bd3b25198e5e8d69ee1b1b02257c79082366"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "9d7ffd6128fe365e046164792a8f1b8f67e440b25ff0bf53754be189412ad8e5"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "4b1ea5c1e85e848cfc78b99cb4d7002911fdfa9005cc93deb8c8271a8bc772ba"
		end
	end

	def install
		bin.install "knot"
	end
end
