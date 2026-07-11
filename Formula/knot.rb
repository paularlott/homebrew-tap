class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.29.0"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "2c66e1d23e4da234fa03bcc758dd18ce179937ff8c37b6d78bc8ee97d9059385"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "d5cb3c8b5116c6c1d778b1d95ac79945a546019841ef70e9973266992fa2f20c"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "e64935cc386e0bb4ba9aaba9fbdd73a13b57a62d22586d2aa528d0b04d71d4e0"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "4558933af942bf8e1435660d9a91a92123cc2fa45f9a4cfb66b700d0ea414e3e"
		end
	end

	def install
		bin.install "knot"
	end
end
