class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.22.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "758d4854fe574d48a1729633cf12077a81884005b75a8569f29f0681496083ec"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "ab07cf9a584eeb8092a089730a064427550ecbb487fff077a03abbde044ab9ff"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "841835e8a8759c37f06a624995eae0f6a7b227f62d7fe330cc5570a996327932"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "fd2cf5f4a8af7b13d5466fdc26bd0207301f9a8b740294e88cfbd280f696be8c"
		end
	end

	def install
		bin.install "knot"
	end
end
