class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.23.6"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "99c74c176ad3f3cc33c9d8183c07d1da84f6a47e60eae86e8cf0696ccc7908b2"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "c2ba7ff9ca7a097a042edb51ca5fc7238626eec1af5dde0ffb66f214902435d7"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "fdda660767acda28d8a9c4169566d8157f2911c3dfc5e50c2328f58153353e29"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "ea961751c90195ac887f10252797a25910936a1dd0c79032f9fddedf9ca42ac4"
		end
	end

	def install
		bin.install "knot"
	end
end
