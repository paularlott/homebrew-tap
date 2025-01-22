class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "83967121a2fe900f075286817616e34e869bfc09f71512ddb8cddff275ca49a7"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "453d65d4f1314ef7a310d8e9e01c090caaf391878a2b3658f956cdac9536b2ee"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "f28f9686febaf6e85b5a22c3505e0d3771efacb085dd8bff4812330735cbc834"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "6b4f8bbc5a2ebe794076e87773e5c090db3ed2e08505305a06b47ae9ec89489d"
		end
	end

	def install
		bin.install "knot"
	end
end
