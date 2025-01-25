class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.14.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "8c3ae8ec52bc8491adf6f6926aea24cc9da1bbb3b8b127d3f34feea0fa06c99f"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "fd0d4be662278f148e81097b52bf1ddfc37fc9317f13444f0cb92384b832c69c"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "bf3008e19ad52970d834a59d2e8292a425e68adda6f429d0aa23fd3e80a6506f"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "dd6cb4a5f3522d0491b9965d46fa98677e0c2f9fe233b4510a5233a5f35ceab7"
		end
	end

	def install
		bin.install "knot"
	end
end
