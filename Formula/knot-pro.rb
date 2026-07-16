class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.30.1"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "fcb63571c6313093d5521fda94979b00982c29d9071da818bb85e1f96ac77652"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "f1f5b2472ab7b8b3fbdc92f1ced0eae8ab9a245b9025318118315be7c3d1af53"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "6b68a0f6dd04d26d9a3937febbd3ad5f1634068a997c391656f93afe3862236c"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "32f3fabce6e76b7e076c99461976d4d378e7c42e327e91809babf678ead87bf7"
		end
	end

	def install
		bin.install "knot"
	end
end
