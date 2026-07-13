class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.30.0"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "d17a6df54badbce7d9321a1540b11329bf613227396972d47602280d917b76d6"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "0f714292d1d4c5314ef182b9e69fc5bfb7944ccd4c3477c0be34cfca5b348564"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "ee7064f76fbb34a8d3474fbb260e4a43f0aab8f04fa20726eed7218e2a69e531"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "a6664f9a5269200db7cb9fc0bf3bfe0e4d6f22ca0c791edff315918fa8469ab7"
		end
	end

	def install
		bin.install "knot"
	end
end
