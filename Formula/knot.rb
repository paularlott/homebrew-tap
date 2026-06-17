class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.26.2"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "da1f82b259eb77b7ea4582fc522bfad19c97bd526652d14de6e2292d0b296dba"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "4b273e2d4a15ae07883dacb79a8dd610d28e9278d40de2986a212f0cf553e3b5"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "2d9f0828a8093f6a177e6ecf161043b92676131e804359354abfa010ec1c10cb"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "d8b752ef7ea20053819ed19d896af0ff3baeaeff98a6cde520025a4fc28308ff"
		end
	end

	def install
		bin.install "knot"
	end
end
