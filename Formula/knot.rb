class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.21.8"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "959b332aefaf3ffd0665f56bde2b2fc3aba859429a60c97159775e14ba567ebf"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "69a0fbc286ae4db45ed32b67ebf0aed18a3c14de1c2e241649c7adccd1007a21"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "be73b717d0df464ba20b1dbb988a1a9ef92889e57e839fdb8bc1dbe095800cfa"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "4ef390e11104cd669a94af9673edd177a04a5dcd7fb9102bee43b02052897430"
		end
	end

	def install
		bin.install "knot"
	end
end
