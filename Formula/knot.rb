class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.23.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "45709e8547653c7f49a6a151446f27682a6c5dc53b084bc311d0d41e576bf7b9"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "3c35aa6981d300ce7fcfdd1f3120ed6d8b234445815cc326307ca923785baa07"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "84426153a74ce45d341ea2d4297d3bf5d193ea1f0360b1018cd546fb8618b4b5"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "28219655e9910d29b4ea3e8cce061c915045ebd65308a20e29f970de864618a2"
		end
	end

	def install
		bin.install "knot"
	end
end
