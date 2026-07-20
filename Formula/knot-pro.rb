class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.31.0"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "9b270860e3796adc61501cf7bb190af36ef716a476c0f1e90f3d7f15b7d843ca"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "7cc10791e7fab4161c4f765f831319816cccae183f43b2ed7c71a43367d6ffab"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "5833129d6cd5389860d84ce1e1c7c7fb0d058673524c81e36d8c493097e8410d"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "a34e9404992c3bac0ecf398d099749fdc926d843ce5dc64aae98a01f3c79c3b3"
		end
	end

	def install
		bin.install "knot"
	end
end
