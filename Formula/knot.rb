class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.0.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v0.0.1/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "40a1b17af14c5599bdbe748a159fc29164abc84ed556084d630f0c37d6be904c"
		else
		 url "https://github.com/paularlott/knot/releases/download/v0.0.1/knot_darwin_amd64.zip"
		 sha256 "a4612fb819c50edc8e3e8434956a791d1fcfd310e357f07ede16b2f0ef426e1e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v0.0.1/knot_linux_arm64.zip"
			sha256 "3eb1c815da1433bd030b89a5a4d9ea3efb6b178fdece29ededceba2f82bbd170"
		else
		 url "https://github.com/paularlott/knot/releases/download/v0.0.1/knot_linux_amd64.zip"
		 sha256 "1ad28a735d4b1378f80b12b10e0284c1e35e7cbaf0e7fdbe24d574f9db1da88d"
		end
	end

	def install
		bin.install "knot"
	end
end
