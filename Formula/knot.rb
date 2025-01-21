class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "97bd6483b5b4af953877d8dcab0e131458b1aec09de58e59e7cad92ccc8b135a"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "b376fa7bef2870409893dc6d078932ceee113614e9d66132d6fd1c6374cc6267"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "600c6e747bffbd1db1bc5be3dec359effcac845ae28e8a43dda719a39b62da3e"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "4e2f489d245b02b0a2d8d4d1eefb173cd80d741eb065727e32a1aeda4081fb0c"
		end
	end

	def install
		bin.install "knot"
	end
end
