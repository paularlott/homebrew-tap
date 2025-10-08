class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.20.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "e0c3d4b3a3de85cbfe4413cf7d2ebbaaa092a0f7b606607ea246bc76ba1275f5"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "149cfae576154f75c4899a7558e9e4d0743204815375328a23e8c09d2b5c2a47"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "1bca567c712500d5d0ebc216e48132e1194fa5efd592a92a92aa1047eeb76897"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "bd1565eb9e941ecc2b2cd3162c622a37e360155b39d808547e5935ab21c4d08d"
		end
	end

	def install
		bin.install "knot"
	end
end
