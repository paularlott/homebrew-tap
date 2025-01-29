class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.6"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "ee46402182c53da0018a83229c5b3dda2a2404954e301546fb09f127c7c91d88"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "29941607c16efe65bfb3bb78fd3015efce1146fc865d3149b52b58b054f06b80"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "15fe24aacff093ee0ded490c8027b519a0496ddda81586d5334eceb0a13370a3"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "23099ef03d270da6ea2a6eea7bd1dd4083753ef22cc3bdf8e814a891b3695d22"
		end
	end

	def install
		bin.install "knot"
	end
end
