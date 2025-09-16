class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.19.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "b6fb8f228370356e12cf688af04db1dcccc32fa767f6fdd6daa6bad428d3afd2"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "67b71eb7ad87a4dc8bb3f3772d666cc293b9011e9767717c34b7c459f52c1bfb"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "bcfcfe936396a317544745e931aeb187b78b344c1e47b90dffe44c7b9e9a5efa"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "63566d8aace66d5c5497025aeea83675e0017941d610a276ef3e6c41eb7f8442"
		end
	end

	def install
		bin.install "knot"
	end
end
