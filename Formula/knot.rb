class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.18.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "202fa144ece261d26b410b4d826dccbac2522fc9280dfd385ef58aef18afb7e2"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "708f2f2b074d8db61322bf0d3910ae66cf00a0eb8f2ebd3fc94842c61ca8aaed"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "b733b8a100b03d08d0600762b8f1546ebc959ff8e9be366ebf596cee143e888f"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "5bdfdb7380b65df521f90f86054f9f1ea9ce11deb4411e644951c0ff976cee4a"
		end
	end

	def install
		bin.install "knot"
	end
end
