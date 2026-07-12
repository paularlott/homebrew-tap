class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.29.1"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "7c378677fc126cded5b2cb2b3b22b7065f4e2530907ea309e711e320f4af1ea0"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "2f0d92c78e28ac8acc092d0c31aced5c7250ddceff47f8a12773983d0f76b6ea"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "bd3da026d8ade27ca7d903b1bf4e88c74737ec5d73d5924095d7f4ff9f02353e"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "6432f90abd86d048b78a2f89d22268c6e7fc15c802cad39a160abc87c2a826bb"
		end
	end

	def install
		bin.install "knot"
	end
end
