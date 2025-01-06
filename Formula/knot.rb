class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "6e03851493397c3fefd34dd3e953accd1b05791e8fe678f6268ed1cb77fa6c72"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "df8e552cd79b847e6f10049c6094ef50ab236532c948935a46a62545d0e6c620"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "393e847a64f45bdb17022f1f1fd14bc65bc11c870df45437d42f6d76ee11cd82"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "09f4b94f0e4a46eaf7b39f1c8a58cd97e7cf88e9e75a4d3c443dfd23ed41f586"
		end
	end

	def install
		bin.install "knot"
	end
end
