class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.15.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "335807d3fb6526ebec9da23687d23fa7ef400c61867d1c3db8fce08089d481f2"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "b9c985e7aae13ef2a46f3e2ac618f060eb2565f1a77be07621d9c17a0cf0458f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "a3b3520a4ed2be9e12571a25e0816b5d9e3f32c4458cddfd82110fd55f773685"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "ec021e137fe89d226e45de2ab2a909122768c9148b8e0633411c62d948c34bce"
		end
	end

	def install
		bin.install "knot"
	end
end
