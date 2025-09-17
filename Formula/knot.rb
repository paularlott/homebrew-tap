class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.19.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "50fe74aed3b8cc377fd7411069264ea0015b0bc4ccde7175bc38499c50ff805d"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "62e183530b818c30ce56ee2f5c5f5f0db41efbbf8e73cf2c06dc96e6e33401f6"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "4866aa2c266afaa87a9171ce714581cb5b2b4775aabae3ac37bf2611dbb94994"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "1f155e048a5683967b1e91de1180be28ec96f40013aff8660726e9775082b608"
		end
	end

	def install
		bin.install "knot"
	end
end
