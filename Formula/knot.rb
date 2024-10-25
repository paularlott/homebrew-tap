class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.9.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "dc06a89b7e48e34febcac758f1d19a9be756fb7cc525e914b1737992b7493f93"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "3bfbae7fa6287ee9978630a2789f410a0176d922d9c420d6223ee24a7a1dd584"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "04013cae4c7e0568e4d2fbdbd9c27563ce047b0a842145cabd177e7574c7a9fb"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "b8f73952918981e3012d90b8721776f55610fa158eba35e4223106625fb86e8b"
		end
	end

	def install
		bin.install "knot"
	end
end
