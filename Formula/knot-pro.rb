class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.24.0"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "4de2614b4dd0a31e0c729d4a4340e08deac8af40676623bb93c79c6ab96d43cc"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "93ae796d44308224056cc261267493eafa492f284f5cb93fcbb73ac999549f46"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "141e8f6c770192c3d5b554f4fe4cd2df14b2a9df54ed0bb583d4865da6727b8f"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "5173dea7e1a60f99f4b8c63b824a289cae78bbaea310c62ceec49c6b637d7e35"
		end
	end

	def install
		bin.install "knot"
	end
end
