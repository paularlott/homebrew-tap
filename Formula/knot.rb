class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.20.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "2984697839b7e3e9d23196396f4c51271bb7dc8b146284eb599fc85c1d672377"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "6307c0b9a372a57c408a962d6af9dc75762214af93669349354d51d78fec1428"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d9dc01d52e107c515cfd7abddd158030bd708890d8a7bf74a8f2f5a6e0b92647"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "d3412507ae46d12ebbde3c3fe540230e38593ecec0d6af33e96c34e5df86bfba"
		end
	end

	def install
		bin.install "knot"
	end
end
