class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "0b94df96c2e9c6f48b384493ea81eaea9a411842640eff5ef465e7beaa84653a"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "e32c8760ecb2d38064edfb34fe2629df06551e6e3c341f2d19d5d7555c5025a2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "e39fa5856ce11f6b17ea6ebdf6fa90620d0a52ced42e9153db218b0d5ccfda09"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "178a55f85bfae46d6e760c0b692bc14b7a28f88cf2ba78f6657ec5b793665dfd"
		end
	end

	def install
		bin.install "knot"
	end
end
