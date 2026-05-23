class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.24.2"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "b95549d56804d9a2c115223a6d7f8acfa25a5b5bc84e7bc39707c3ec4bb93267"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "9a2361c87bc091e44fb2c76e14c56bd15ab0e38e1eb75a5fc21cd8a44fb89d91"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "c04bc0e291f1072d395729a309880b8013fa3f2820a8e0cdd47de1068e3c7ece"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "dfe988b66e8aeb5fd99cc843b0f2eaf5cb87a83b4ba2bae9aeace1d29b9fd3ae"
		end
	end

	def install
		bin.install "knot"
	end
end
