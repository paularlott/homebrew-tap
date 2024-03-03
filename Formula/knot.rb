class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.4.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "4b461b28a817a738291bba67df9c64f74a31fe55704421039d12298c6f0b6f46"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "9586433ae6146957bf217d9ce09951f6e249df73cd3d6f09faf8f2f4b54b40ea"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "158b24c97a7a17861bfefd0f777d4a73feb9b39260ca51841af1cd8c712856b7"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "e80ba66abd4a607f0bf6266df30a0a14d6359124150f534e9e6cf5ef707822a5"
		end
	end

	def install
		bin.install "knot"
	end
end
