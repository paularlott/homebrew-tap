class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.15.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "44ed98cb1d6bda22c7022a3c4d2dec2b58d451d8058eed81ac97f72ef072ce44"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "c19161a5c5f82f1f37a3b0c03a78c46caae606015eb0097f8dc5f13da6066182"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "21d79a7796d0f35f9257792d6012d4db8f009b590d2efc2010be66743ad684e9"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "6b042929d5a48b2b8803cadbece9f666ea9db9c9a2d31d49cb4fac31c9990c03"
		end
	end

	def install
		bin.install "knot"
	end
end
