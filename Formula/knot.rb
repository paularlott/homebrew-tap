class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.26.1"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "d034684c8642c4ccd54aec49dd9383dc4a388deea010617b9ca70d042e6be267"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "c74692fbbd5717848cd4c38abc8a28b9dedee32ee80362a55fa0e503b129090f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "c820af2d2a22d885f4b8d5611783b042c31c45d5ab836112cf4c312835afb6c1"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "12c14cb83dd644f04fad626d175221aa1c14857fa2f6565cdb805feeb6c94fc9"
		end
	end

	def install
		bin.install "knot"
	end
end
