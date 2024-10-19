class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.9.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "410dc7fe288ec036958dfbe05fcb62fce404e5a13a8615c2f53fa09e623b88dc"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "9e0df6c21e46fd4ceefc9d57c494d67f0f100b58b7a9730b90b6b2aad2837594"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "ad92319de00ec01ce026e2445172a87b86eefe3969a3af6653128e4a1fa6815f"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "cd49e07a43d0cf2f043cbdae112aacb301077ffa8ac697a6fcf061b49b37669d"
		end
	end

	def install
		bin.install "knot"
	end
end
