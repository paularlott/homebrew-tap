class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.26.0"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "799e228ed6f237c3eba0a3c6abd400a2d5f3c2f188014f2cdffb86099f77ca59"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "a12dd7d701fe017c4f029418026b54dcade10d2305c8307d467fcab1402f5fd2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "ae8410f32f28ceb7b4ba6c2c105552f701b1d9d55a0fe4b11275bdec40a0e72c"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "a19d5f513f94a54f346efd370cd3db860ad8e4fda82a114268fd06e8ee6dbd05"
		end
	end

	def install
		bin.install "knot"
	end
end
