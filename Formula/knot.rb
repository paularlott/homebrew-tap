class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.5.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "6272de198e73af287505429f66d50ea102137223979e243a1bd9c7bf3c5f490a"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "526eddf144804c2321b313a25520eec25cad32b0c0dd11c10fbce3c03f1b963a"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "a1e0712f28902064a8ac10aae6393075ec2072174ea7dddea25323d4a5d2fb22"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "1b287868192cd96f76ff35ee1070f242a3b0e6f281f1a006efac31d6554ed120"
		end
	end

	def install
		bin.install "knot"
	end
end
