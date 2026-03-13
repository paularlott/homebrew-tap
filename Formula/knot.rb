class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.23.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "42bf533bb2797ba745acd7c5c877f75ffee194e6762190a4f11992621554d311"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "767c7a11859befe2e286b6ada0a700aac1ddad08af0b5770d49347d1f9dd2d2c"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "985f6d0da0f1c870f861c039b18053b57d78c9955a7ae46a2c1d84fe6bde6f3c"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "2914dc711ba56b6eeeecbbcfa295aa8ed15d3a2ae2fcc2bfde61fdcf768932e0"
		end
	end

	def install
		bin.install "knot"
	end
end
