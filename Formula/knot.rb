class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.29.1"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "75da3da196b3b55cb4e7d13e0297285ef953884346ba4172771f4d43b6c1a880"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "57fe0985d63f02e625daf81e2b365750b55b5620eb667f254c69a03bba94c1c1"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "852e1cc2e73a70e1743ed21b98e400f09e8d2d1ce691c07a29313e376d18e4dd"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "6e5467d660e9315e0f495d58f5426e9465bc3641653464cdb574107c539d74fa"
		end
	end

	def install
		bin.install "knot"
	end
end
