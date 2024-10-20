class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.9.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "c7e6640ea50c4f401a1b9b8c45d2be6e8eb14638014453e4f43d329ab40e7740"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "d6005f78bcf0eaf0fa853b84456ed010bad6a16f4dd21913565e52a118cc727e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "5368f904fe67c297ccc67ec339ea84a029e7015aa7f72c03c6a8a56a287e565a"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "ab6123c973008f94b18affa4daddd6bd8a77d362fa35be987a9c6369d70724b0"
		end
	end

	def install
		bin.install "knot"
	end
end
