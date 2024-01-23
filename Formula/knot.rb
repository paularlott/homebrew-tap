class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.0.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "74ae2177efaa2cbdd9629d51699a348ecade7064236004f041df96682b58aabd"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "feeb2c355c987371026518073265f160703d858b3b62f1940d1c9cb0e47c97a0"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "153b6436f7de5a7bcef4d4c41a4dd1119fc2821a78f370c36e5f151917d6bd91"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "0d18bdbfc4c1355ae058859f60b39246e711201b7db2496e8a0865cc9aae92a7"
		end
	end

	def install
		bin.install "knot"
	end
end
