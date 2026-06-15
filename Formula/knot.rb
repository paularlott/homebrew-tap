class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.25.3"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "7c2d655c139737df9b0aaca9bcf402be7a996db76c8040df2c45bf34887642bc"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "e7ffdbdb62bd1c0b3dd0496d921c41b58a0b6adba83e98436549691d611556fd"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "0f52dbad226f7b8fd37f6e0b69e49a5eb27f2f4f5355cd03f9c228668fa9f07c"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "cff41bc2b9d8e5bfbb8347dd38292522daa017af375d8fa68558b0954ac71a81"
		end
	end

	def install
		bin.install "knot"
	end
end
