class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.6.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "5fab9a6ef44701cd77ab15a318bb0b60076b8e9b7cbae84f7c614fd9981684bf"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "94b8147e0a909d445d92d878b151e0a4cb44311dadd0c17aa849ae4aa1ed5361"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "bb7486f493d42a24a9a43350ec641387bf46e2ff3b8b86a1ee7bd12e512af2bf"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "e6e3916a62f670b22fb2faa568dadbcc443376650a5a3336b35622ddcee2b283"
		end
	end

	def install
		bin.install "knot"
	end
end
