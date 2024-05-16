class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.9.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "d6b29fc45fe22a9fe4375e43775b301802ca2fb4602fac0bcb1c9e6aff438959"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "f1f0badce24b74ed6d1d125dc166f6956aae14f650979a6a9b74672c68a438d1"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "3b6c4e6f94feb4338de061189c7491f85dba702a560f097889518ae6d3554e08"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "92243ea19b8e25dbdb48cc53f3499ff0da9e10cee34efd137836ac15dfb197a6"
		end
	end

	def install
		bin.install "knot"
	end
end
