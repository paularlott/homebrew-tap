class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.6.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "aec920c2ddb5a9e956e7886a91e62f83fca68c9b01525bc81af85886f035610c"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "c7b0dffe58f5ebf504e81897339ba0aacb532f456f80255f53e05db2fe0b07fa"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "293aa304dafec2e2ffa6388f0b5a34d61b764a329b1d79bca118daa0c7b673e5"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "b53b03d4ccfc82c5e5d4dae9c1799e054b4e8f19cac73c307ee1ef581eacdc19"
		end
	end

	def install
		bin.install "knot"
	end
end
