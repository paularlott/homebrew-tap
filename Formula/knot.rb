class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.23.7"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "9e317dab44c0a330ccc36563f9721297e92bcbbcc0d4d8f9972de64fd3d3e2a9"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "4a6ebf3acfbe43c21909f9fd9d4bca92b4e60245af15828b1ed92d1b6d69df06"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "8141c8a7111acd03f65754531df2f25716dd1a0c83ea1ff738506818dba86c97"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "7e928c254a9d2247a646c0f890fc52cc4d640e9ce90a3c609d2ee2b8c2bbee18"
		end
	end

	def install
		bin.install "knot"
	end
end
