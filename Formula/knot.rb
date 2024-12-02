class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.11.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "45283eda43f78f8cb676623920b7bcec5358ef1b265f8e0623aeb8f9734ad1ed"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "c2ef92abb76bfcac2b3cd54b6b28eabd7b33780812aa6bc878ff03ad8ecfc7a0"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "dda735ff7799d121dc334c38659556c363167707746a35579205d4f9c538baf6"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "579cbc1b0d9accba8db0f6130e49f0377f6ff1c8b8c9471289c4586fa6f78760"
		end
	end

	def install
		bin.install "knot"
	end
end
