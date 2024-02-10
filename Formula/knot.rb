class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.1.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "808700410807bbbec98c4b64499eeff4cf9bf82c2651a1abdb36f7522c14e9fc"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "c8c9170fc864d819d11352e01099ea6f04ef82bc41b9339fed8f991ee44bb7fd"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "5d25315ae06647f1f701566f2936d6a09598b4730b55eb3357da8b3a20703652"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "826c1ff2b49c196c5c804979eeb1ff76d8b6494a6fd9eb904c76a9fb159225de"
		end
	end

	def install
		bin.install "knot"
	end
end
