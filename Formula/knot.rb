class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.7"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "acc75f4277dfaeb2e38a833a92a2b904c55e32172f9ee21759c97a3d5a02dc30"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "03d712391a9153cfe591f6bcd8a375e5ed79234e35a70028ef549081e1c1d0ad"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "cc197539feeb4f2f2f9ea0783cab0c1b2efca3543374193da42934b01872585c"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "86e98d5ebf9dce849386344e017049df53ce9c29f7c368e4e66966cab5fda3af"
		end
	end

	def install
		bin.install "knot"
	end
end
