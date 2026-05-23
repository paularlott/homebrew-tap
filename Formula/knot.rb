class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.24.2"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "7ac0e6485a22a4ce38b0bd42458c7f2095a23cac6cd11d40e097480abc1c2c10"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "783d50ba6486dc4fa4fac9b29719779efc17df3ac2e5de5b483fb499acce636d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "4135dec238fed54565e145cd9d9f09a2cc9c7a3dc4c119660199cd23287dc90a"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "4306695e4c367972aa12cdee145d42503dec9449ed736a382823ca2d24b55965"
		end
	end

	def install
		bin.install "knot"
	end
end
