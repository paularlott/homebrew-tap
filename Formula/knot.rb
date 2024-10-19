class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.9.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "7d3846e2b964074fc4f264b6418759e80287cdf59132739eef44e59d2f3ed628"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "3be894e6a111467ccc304106dcd202214f5c8d328527d68e244acd62ea3a0fd1"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "022c912a1ab5aecf12f6712eed6551249f3933d044a0dd83d29bf926ec9fe9e1"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "0bcdcc2ba05ae8d4253056be5a5a8ea7bc6ccf33da567690307ad5fc2e737f91"
		end
	end

	def install
		bin.install "knot"
	end
end
