class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.11.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "efa85e2d498c52b7782d8936a79161a56f39a3113c21c18e815e81090deed740"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "052ee98965e0473c5e9552b842d57983f570a9524b96cb825deb1d537ef5d824"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "c201e22a5e7acdf65ecb54101e9ff29d2a2c7a8594fed5d6577bbb4be930819e"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "43b17b1ce7837a4c21eac8399e4f36c7564b608dc6a23f1cc068b2662c320096"
		end
	end

	def install
		bin.install "knot"
	end
end
