class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "fc5cdb6db1c4e1bae3ee090d12fc8f1f68ceddac0751f0caac3aa3f506f62079"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "b4a2dffcbdfd0796ea41ac01fe19311f3a920e7957ac01abd31b3defc095db1f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "b720f60c540d182939caedeefc243f641445d2be15a10b4c4e5972c2f964a2c8"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "96e993f6446a1a1d10c89baca45a5afadd8e8da97c023e17edcbfa983c8592b3"
		end
	end

	def install
		bin.install "knot"
	end
end
