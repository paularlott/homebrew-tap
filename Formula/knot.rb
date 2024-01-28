class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.1.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "50e880d162a3928a0cc4b41e265811af376fda3b5d0b70ab83a804f61f64cfd5"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "50f64f4b7b63a507e127a8707b70388f90f3563c0500b95aa2ec9f086f4221f9"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "942475b4220773c22132e48a30252208f712cf4943280d4aa4e0488599801cf5"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "a7070dbe92c3571fe2ec89a60a31ea444cba39870f70e725a45191ff96ab6885"
		end
	end

	def install
		bin.install "knot"
	end
end
