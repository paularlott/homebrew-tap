class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.20.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "4e1658529f25ff76bbec70c42686346afdf1b8587cfd6c705e6b6440fa687d3c"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "3fae35f08fa8e46b48944ca6089e7929b044d02d16ebdb70d58426bc3a17e5a8"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d325c0268ec5dd453fd5c842dc09c1e6ec6b25e63dfce3a788002a9075b95299"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "228b3ad4f37b8e8e0fb9074f6e22079d6871640a17b27871ca6c7eb20075915b"
		end
	end

	def install
		bin.install "knot"
	end
end
