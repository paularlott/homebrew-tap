class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.19.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "83fba42351d3be6213531c073f96aa211c1676f835f35df7b074953b55594ec3"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "f98dd9fc0ed5001c13114c5dc8d8f8b749daec91d573991622a731433685ab68"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "76a93bc5e0c0b57f1fbfb9eef5c21d20f99891afacb507ba1bd2bf3a75a769f0"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "87cfdfbe082b7887f81e2c18502c7efcab7b26277a67b0a0f8f36c9674a436a0"
		end
	end

	def install
		bin.install "knot"
	end
end
