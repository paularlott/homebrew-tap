class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.15.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "8b052036d6112b23981e008c23b1aee8d34e5f67ba5d731205adb6774ce2b9ef"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "95c4cc2d5b1b5a5870ecd8bb1295a60c4bd8b5ac26ed5acb6646e7d09f72fccc"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "5a947972c06f4096aed34dbe6c8d82f8a3ceab75f8e063b13a8a2cb631c3c4a5"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "a695a876b9325f26e3ba0f0ae52407f33e0119eed5285c91ca91deee57ca9f09"
		end
	end

	def install
		bin.install "knot"
	end
end
