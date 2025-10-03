class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.20.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "c0fe797f6fbab5fe9bd42a194d340a7bc26adbd46befccc1e183906f0c686160"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "0d1b63a9a653c3e3d597966ca6f404fdab32dc982572bb982804e6d7e2fa47b8"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "80e2f8d456ff8a5957c4b00f7e32f2c707f04ae31e061f7ae88657444f419f49"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "ee2b20b068dc71fe9b1f6118346449101546e71f1bb3f09fb5bafe9908c27de9"
		end
	end

	def install
		bin.install "knot"
	end
end
