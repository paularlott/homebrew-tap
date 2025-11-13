class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.21.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "935f3439b0d3e117c64508753db57492c41ad7c525f176dd519f47f9d737011f"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "1cf1cf7676e305dfb692e6103542898ec37b4959e4591ac9e04eecc87f394e34"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "a13712a7ec313694ad1794a18f7fb7ae5b7cf4609824f575e15a4a83a098e4f8"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "564fddf08c80922189751acb2a276dee22fb6cc99dbcef53a7348c2f2964b07d"
		end
	end

	def install
		bin.install "knot"
	end
end
