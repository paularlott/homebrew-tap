class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.24.1"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "1274772e2fad2cf60109e6714f55e444d0cf20a21a55f6a3e527a07fecae0484"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "46d6fa88ae0785ba78cf4b24aad9001395d67fabf63723d155ce08db40e3112b"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "9b0546ca43c5a7f3de72dc91e5eb4eb399174aeb1833f9fce09238783377d044"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "4d138a1cb76775cd5bc5e1b9a309a60bf8bc122b70056b6f16d30fb2ea16aa36"
		end
	end

	def install
		bin.install "knot"
	end
end
