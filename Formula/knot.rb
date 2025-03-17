class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.17.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "c910c7161608345892cfc049491072ef0144d2c00cbcc5fa4a2ff392d1678fd4"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "9e7b4d3d4c277ab4fe54ba3be3a3c1c89e2f3b4c33a9936958c29dd8fbfbb34f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "09eae7f7a1f4377fad04f9dec2d8ecb6928ef8a5c47cd9bbc718459676843083"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "db65b181babdda0a3f6c2e2fbfd934b14ff70e91d1e4a194d58cdd0a9a538e03"
		end
	end

	def install
		bin.install "knot"
	end
end
