class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.18.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "48932c8f745f85002f7c9f7f21394892974e90d6af4031f7102a1f11b2b4f7cb"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "f4655cc3fd17f39be6e206e891cc3424907c63907d2c056ec9b2722e880a1d75"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "a2c3c29a07618f623cf4a06e73b0d69ea37e0a3d2f87905415941d0e4c37255c"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "61d0a13f083ce18dd7f2bfb0b096e390af9297df118e66dbee86abe6e37160c3"
		end
	end

	def install
		bin.install "knot"
	end
end
