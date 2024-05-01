class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.8.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "fd4748b5d77fe27d41dcd2fcb48c59f52a3ba025e205a22ebb296b6c2e7035ad"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "6b8092046251687b5d1cd2506b2de619ffe1e1f3d5faa5abf929836834016209"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d1d2800c09e950333b9f4b3a950f043cbce96c07ed26b122175a208e6b1ca768"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "7dac187249f98a365d77aba85f4465eccc505a714f525e0ced30843ad716a8d2"
		end
	end

	def install
		bin.install "knot"
	end
end
