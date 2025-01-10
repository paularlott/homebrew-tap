class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.6"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "99978d30c1e6273fd494dc59d5a43d1b72057db7565a4b2f9017f8fd5e881cb5"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "bd85e3cba9291d4aff1bf3ecacd00959cf8aad2603501dceb8f4bf25c4943220"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "b941f436098baf8dddb2067f8029281617e95d3c35a97108a559da7c2ca99852"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "17decc35019c418d42916dd92a3041da99818d96a7b13a2bcb8a5348f8a3333e"
		end
	end

	def install
		bin.install "knot"
	end
end
