class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.25.3"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "a34966d972a22120b641716b72a2822acdb794b0b261fc536cff60b43fcba72f"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "4f45c32cfa4f93dbd19d16f81fc140dc19b1637932d50cc28c992b57b3bfe425"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "92aba3cbbc1d399fbad88990d4edd395098938e106ff177db0af2a2a03283882"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "3adb6fcb048590b1fd6e65d68e75210406c63478d8e41acf84853c7fc23c0d26"
		end
	end

	def install
		bin.install "knot"
	end
end
