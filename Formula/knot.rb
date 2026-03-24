class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.23.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "0c58ab7f60fb65c97655804db963ab15359a13d9d9942c4b8a4c0ceef843e9dc"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "2d2a9320aba938a4b64d54498c86078796ce610dc4be80489fa5008c5e8f42d7"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "5fbaa0c74d254b34fdd248de72430c60d8a9f778cf3e67c60b765d154966189e"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "3dd350024389aaf84d7a4d75eac34cd0e902016495845d4cdde323bd13bc5b43"
		end
	end

	def install
		bin.install "knot"
	end
end
