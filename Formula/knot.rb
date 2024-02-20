class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.2.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "9f2f0e4e47dce3358a273aa42e601f22ecc5b030dd7851266bb960e18aed59ce"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "4d007c2c39c48da0468c99a087fb14f92bea4a83e76bcb2c7ed65fe36362fd4a"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "00a2a633a133842c999a65a71a8ab573d4a25c3d2227a818eb4db7ba0f5bcdc0"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "edab57f5c21baa700b4575788e9b74798b585cd0ba2e52f15844a32180134b85"
		end
	end

	def install
		bin.install "knot"
	end
end
