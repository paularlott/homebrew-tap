class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.9"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "f408f320f2251f4d47244c6a9746a539369ce75c0a263a6effd2915e93f6eb92"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "08a93aaa81478a8e464d3c70e02ef08543563ac915e3f4579fee1cd5271c220b"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "b2214aaeeb9efe79271d27eaf6f34a266bde7a80b5316c46134d4afd7e2c399e"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "21aba31317c5fb6d255be3273072251a1616a6d67f76ac2524fc2afa09067acd"
		end
	end

	def install
		bin.install "knot"
	end
end
