class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.1.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "63dd5a5ab70bb0d33ee8e28570028713bc17bb1feb34fea9db5ccde4a0341c11"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "4d178c7a64f63ec142a991b8ad2bdcec8a4669ac1cd5cc9b73af3cd5bf567657"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "0c7159f69162ce39dbf72f910388f08a141ab918a325a5006831652506135738"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "5d777c93016c380724e766d611be6261ed2a229b2c7519b1408ff2b76dde6450"
		end
	end

	def install
		bin.install "knot"
	end
end
