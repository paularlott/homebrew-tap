class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.26.2"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "af8cd96c4b6b74f7a179bf9dfcce47814bc5a5d07e859f4f233ed3166a94149c"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "962c5116270ad606a11259728a4dd4c3f49d1cffad6bec01f72ed28213178f2a"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "014482979b07825f2371e035b2abeab5817f0b169468784894a55a1493397913"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "37a95065ae546ab198d34bf7a1e63e268518a49d55a013e6c712129a8f9e2a33"
		end
	end

	def install
		bin.install "knot"
	end
end
