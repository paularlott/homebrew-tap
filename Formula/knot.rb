class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "efb985a3d0e610fdec92941690a0eebf8ecb177d9ff26f8326d59b1881ae750b"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "ec9fc1055435585ce9c9eb444e312c251ebde0c2ecdad7d31bf6378888460600"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "267f3699a065e859e642043bef1da62b268d5d917416035776477983e94fbc30"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "5436a6cf6d5b3742e24423c5b2ab8c554f75d56aa5c70af6daf2cc2235c90e4a"
		end
	end

	def install
		bin.install "knot"
	end
end
