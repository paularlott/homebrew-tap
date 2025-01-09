class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.12.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "fe9eee83b7899c1c7c310d54756d7b2f90ada11654bd3b7443c6f49f137cb1a1"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "c7e560521a8442a12e60b4906ed5aabc7123e6b36aa230630c782eefc0eaae05"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "ff7f7051e9684df2770a26d80bebd706cf0447069ce4d1604e1af840b3bce658"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "b125cb8ecda134d57ccaf361788ac36aaf8750c6ce9be977189417efeafb6145"
		end
	end

	def install
		bin.install "knot"
	end
end
