class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.24.0"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "134c2737269b1e48792610362b441e6d0ccd28416f96d58b868e21a8bcfbdcfe"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "e26f0f3c216c6b614a210ab4c1869ae5c5aeaca3a0e3fca8e48ce88099ed0cff"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d285602e7b947e68b95166313eb7a4cd65eb4b04d2f726a8a5f374ad507530c8"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "60b1d14378c7d91579db41be80f88cb17e279ae72bc53dca5902ad12a3bd5402"
		end
	end

	def install
		bin.install "knot"
	end
end
