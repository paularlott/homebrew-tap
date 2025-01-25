class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "68e43e2f4d81a3a4dfa8237492fadf93c59fab7a4676658c66bf365bd3504468"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "ffc6025d38f59ea6d252b00c6f600a6c168e982ee775cd4610300d21ceafcb40"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "6958a122322deda1106a1fa66c7a3ef0140a5c618d085547a293c4dae1e8a9da"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "8269519e81f4b6bbb1459c850cae60cf217bb075f5f4cf3b3eed2775e24c3400"
		end
	end

	def install
		bin.install "knot"
	end
end
