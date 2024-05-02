class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.8.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "09311d06192a08d5b34b966fe2f0ec4cbe52492374256bb39e83c8dfb7905426"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "8260a6a1b596068039fb4502aaac4ffb43aca56250b228988745ab27df1fb744"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "6e166a6bda2955c9484ccc11b198846e889c7cb49b0358b07d3ad9c2f05d89f9"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "82bac1ee4132ba743c45d0b1dd3f9ef81de209f26c98a1fe68ad8f2a21d7a4bb"
		end
	end

	def install
		bin.install "knot"
	end
end
