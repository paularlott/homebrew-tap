class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.9.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "166de70fa6105cdde2e80535d1da5d068c429a580b6b9ad84feee4345d91b34e"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "9d2f6fd392925d96502a1ecce0a6abe140603fc59cc1957cd8ac8452cbc4a7c7"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d9adeb73038f07d7919575eb11ad1598775f1d5614750ff2212d496f91ece8a0"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "02864485396fc7efbd09f6226e8d86e0817caa8ab1b8b498bc5ab64acf28d6ee"
		end
	end

	def install
		bin.install "knot"
	end
end
