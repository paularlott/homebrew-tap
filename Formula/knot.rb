class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.0.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v0.0.1/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "4c3ba9ccca5002ea2726b67a1be3ea82089b0707ac0bea328e3f0964aafe64d5"
		else
		 url "https://github.com/paularlott/knot/releases/download/v0.0.1/knot_darwin_amd64.zip"
		 sha256 "6329ceffa21d5854bf3d1dd5a10145a55e3fd91d47c1374abfc9300273dba52d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v0.0.1/knot_linux_arm64.zip"
			sha256 "dfd399ee80b263c450adaf2048e50188bce5358b1fcd10ff7ca9a2a585c41a18"
		else
		 url "https://github.com/paularlott/knot/releases/download/v0.0.1/knot_linux_amd64.zip"
		 sha256 "f41f7cf87cd49c3e6eaa50b7336be5ad3c15787a0cf325330fb49b6cc5c34803"
		end
	end

	def install
		bin.install "knot"
	end
end
