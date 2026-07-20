class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.31.0"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "b19ee6f81ded81cf9c49bc38733dc01c5d1073000c1e4630ac300b161b524a79"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "9f350169d2bdca74b52e2b7968f629031ed390222061dad1f01a38c975291ac7"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "4e8c77a3a5e6c2a5493d1874537fed6325d43d62d28236a64bbed6c6032974a8"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "8de138e3454c3ffe22217a85c2089fbd7c1179cce41984afbecea0a6ca969631"
		end
	end

	def install
		bin.install "knot"
	end
end
