class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "c9045036220dbf99cb001a5a36eca25ce367c874276b1a09666469a2a26a961b"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "0767822f23d13cdc12347dfbb3c00c96f372938b7416f23cb6da6336eac32128"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "20b493b45efa7a1d2168b4b3bffaa1498c322bc13fa3db1afeb5ce33c9ed4a92"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "61ae9c89447aa1f94539308c992a7e36fe4d69620f045388e767913f11a20ea9"
		end
	end

	def install
		bin.install "knot"
	end
end
