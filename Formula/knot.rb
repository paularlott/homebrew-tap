class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.10.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "3743198a2a54bc08d4bd867e81bdc2bf0436c11fca1d8b941670e64815ebbb53"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "5f676e6195df6508c332dd80be31ecfa709bca69e6453529a022dbd961d93260"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "fdebe7cebb3bcd21e30cdeeadd37284c84622a7bd88b3e3be7df7be3aad05756"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "5df2d392823b268b226cd93319584eab8575ca6852b57d371a0286a75b3ea684"
		end
	end

	def install
		bin.install "knot"
	end
end
