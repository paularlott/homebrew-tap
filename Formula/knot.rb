class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.11.6"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "5aa100f510d17be95509fc3a5e72cc15f7a5fd1ad5592a69b068cbaaca84bc59"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "1577d82d37b40c8061f1b06f1d5ad11a1174dcbb243f10c4e690bee304c82735"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "03aa91df5779f7ebb2671e0ea4daf02c7a4477654431fc05bec4ba6b010688ea"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "562b2faa6abd74ab52a5f7b3d60df92e4c634dfdbc7014d2c13b7b74b640bb6f"
		end
	end

	def install
		bin.install "knot"
	end
end
