class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.25.1"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "fd9400e331881e9c3d8c721308bcb863a5db097ab8474df9554658f662a9fc08"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "f45b7bbf2c95467c4a52b0e0491f94cc0849d7f89d03815d27a9d91f50d1f807"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "8b6039c00caae4475ff9ed75a311752c3b15fe6d526a4c42ef3de8109cf8f8bb"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "2ca51fb3f4d8a08866a930b6e814bac48ed555e79d095c8e42d30c6847fe3f38"
		end
	end

	def install
		bin.install "knot"
	end
end
