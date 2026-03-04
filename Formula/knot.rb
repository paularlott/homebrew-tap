class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.23.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "d2ec7e41055f85a08355c40bbe8328fd85ba73b71888fb1f6ad1948ac4fdc6e4"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "a2c70ae16925739a1553b16c158b50ff88119097798c20a72b51b7c358de6f42"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "bcae895bfb49d5e365e163cd6cceb149e1b18761923ad1e5374516d79dbb2262"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "450743c38d92888a0ce4a52cd5253b1df9a03c6fc388de5799b868a7812faaca"
		end
	end

	def install
		bin.install "knot"
	end
end
