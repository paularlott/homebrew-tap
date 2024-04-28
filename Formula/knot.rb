class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.7.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "f47c675f3b1444ff2a9630460b276ac3fa6173c67014198691f33a74d0e64a61"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "3a8a170c4a654edd0bb36870b770fbfe352762a9fac99584b2fde34d925c4938"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "ce0f432ef6bf0a2055fc94bcaa9b516f85035c2d60c9a507c93cc10cc3c1cf72"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "bffbce111d912a7528cd5a2501aa969453ee49344b7f8c5d98f3d453466a587d"
		end
	end

	def install
		bin.install "knot"
	end
end
