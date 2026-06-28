class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.28.0"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "239bf55bfb20efad58350fcb2a93c672a72c326eb4f21b14a4cee27aa9addd16"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "102ccb00093d952f4bca511630dbe749d00ee82950cc8432ffc4c5261e6fdc53"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d98cd91f8537a864d0afdc80dd6fb5d35cfac1e4090278f38e96043c7dcfa477"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "710f1c8a81e7d8f9e75de38137d2f6b5e0a62786450aaad11966bc484edfc9af"
		end
	end

	def install
		bin.install "knot"
	end
end
