class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "85929c76ea234370108ee8d67b50658d3ceafaa8dbc139bb54955e5e42f70504"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "2a9ebcaa9e367d43659c9031638e14e04418cd46aff3b9f7e46ae09fd0936d39"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "bc8b2ce0d2faec95938c760dc62c123a747f293a56e3f078053fb342ff6d0f84"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "58238b53cc87928a809ea5692b57821329bb184a678c48576f8302612a2be4be"
		end
	end

	def install
		bin.install "knot"
	end
end
