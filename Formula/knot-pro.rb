class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.32.0"
	conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "a643257cc492a0fed2fadbdbe4312ed64f5a582010c6195250ef39a98e37ffd2"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "86c3960d178b0c6d51a79687deec7a70cf66d1f66413e602dbb108cb0feb520b"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "47f1c2e39929a4ca0b7ba2d3e7604028d7da31bd5bf32adfdcb814c138b07836"
		else
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "52094e635f9a9a4cc35b7b3f7e1567bae41c25b1fc9ba8517bf7998f0f42ee97"
		end
	end

	def install
		bin.install "knot"
	end
end
