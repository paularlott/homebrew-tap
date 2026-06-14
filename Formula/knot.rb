class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.25.1"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "708021291d63ee358c749da79a5c8edb0034b4a458240e1112759d21a305c2aa"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "8ec1514cc2182cbd5ea22e652cfad665206cf87b593c89c7e8ecba724075077e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "90c0987ac6c0e8ad0e756e48219c7f212bbecafa50b7492a4645b3cb6809d2ec"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "28c9e08f29f21787e73350c4af49c21d92971c663085cb6f3f883a5d60b4ecf7"
		end
	end

	def install
		bin.install "knot"
	end
end
