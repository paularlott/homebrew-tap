class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "f2156693da4a5f4520ae04ac0f201771988f9c3715f23f8dc8f6e6468133a6f3"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "bcb6e051ec141ad6ed1b78e4d63f81541e010173ee712c70f12258b3f5d7d98c"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "474976a73eba613f267ba0a7fa1ace370f785d5970297ae7070be4c6e3d6ae68"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "b5a3489dce64f98ea937b4efa96669dbd149ee81966c81e566eedfde7f2a03c5"
		end
	end

	def install
		bin.install "knot"
	end
end
