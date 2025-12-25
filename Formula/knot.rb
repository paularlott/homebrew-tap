class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.22.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "d934b171cfa96e39c015e7b82346c7c0caaad9d3f5c249428a41f0c02e2a6b14"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "53b9042780166feda225073bcd62a816fcebc82d5da8c1f55dc32f7fcad4ba9a"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "50afce9785a52875fa787006a8e85dff57e0499245ae99a5bf71dee63eb01dd9"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "b9e52c40efca0820f74fc2fff2b90c961f4dd28c82c527374071a53797d6d5c5"
		end
	end

	def install
		bin.install "knot"
	end
end
