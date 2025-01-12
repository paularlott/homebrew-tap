class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.7"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "bf88843af7167c5ecf176570b7b225b7f87688bfa455f6cdee9e3bbcdbe1ece9"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "e6ec1269757a58c123513d306676b9f165d255509a19ec9b8ad4b7d80b051acc"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "8388602ba2017dab421dab1d0cc64572cf4db986aa31aa31dde279ccd584f5c6"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "d418cbe6428442e4d0c7dd976158250b5db2e5390d640f1ba0f8d44598fd7a2b"
		end
	end

	def install
		bin.install "knot"
	end
end
