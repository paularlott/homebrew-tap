class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.15.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "300c20351a838d08384fd55694ff467267f616aadbba3a629f0998d5c2ea2819"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "4688dccb6d446f32b970bb5bf9bb97a38c17bdcdd1e03f538d1129ed45791bb2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "cfb2aeacd29c30557a5c53139dede19c08a3e785d444aee211f52c2624d91666"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "6343e143a5e400317b410c91bce3df0ee781d67d2321aaf3f83a0dc391ef98a7"
		end
	end

	def install
		bin.install "knot"
	end
end
