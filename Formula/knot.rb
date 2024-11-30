class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.10.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "6ffb96855fe14a31f3a581d8bc70f89c77cef78556ffb3444f7c5126a56bf394"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "bab9a551d0e9e78fcf03498e7ad84ba363da609c49c07afc58c07b70bb920c76"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "6071829a54ee5b02ef95b3e734b06f605ed99fca782a60c52a87c27ee71d4857"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "c6b7d2067176b6965423b426c60bf9555a07337796639ccc67c2f65fbda47ff5"
		end
	end

	def install
		bin.install "knot"
	end
end
