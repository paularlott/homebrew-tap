class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.1.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "3411d0eb154ea1412d5b9af26bb14015276efec171c7cddf995b5fdfa2b934c6"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "939b35b604a8faf49e1361cd0dfad4e26201ec1d038db20da80097e6e5d76dd3"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d278bfcca5f67106ff07bdc5a92616c4ac8db3e2751fc8f2f66244d9eb591a52"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "5e3d448936e8fe5c43494f98c93fd784bc90922ea222a910c4099d41755f8c50"
		end
	end

	def install
		bin.install "knot"
	end
end
