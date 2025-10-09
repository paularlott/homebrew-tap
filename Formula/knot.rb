class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.20.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "78520d2d61c53207313c935988860a547ab6fa8c8a597cfcb8bd743a396091cb"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "028a08f084556c9b60890fe60c65721e9e798520e5a2f62ca0a01562fb792edf"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "ab38a9c8ede1e7a36f61ae0855fd5a35b4e8e9e07dc928363a7130be4754f102"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "94dfa38622d396afb357bdd20bec7b9edab35513e58947b28e15156f21617fb1"
		end
	end

	def install
		bin.install "knot"
	end
end
