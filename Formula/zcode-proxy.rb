class ZcodeProxy < Formula
	desc "TCP proxy with automatic failover, relaying a local listen address to an ordered list of upstream backends"
	homepage "https://github.com/paularlott/zcode-proxy"
	license "MIT"
	version "1.0.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/zcode-proxy/releases/download/v#{version}/zcode-proxy_darwin_arm64.zip"
			sha256 "a064946f81818223b50953baaa937a3151c239b2ed537b77c3ca69d9d78ad2cb"
		else
			url "https://github.com/paularlott/zcode-proxy/releases/download/v#{version}/zcode-proxy_darwin_amd64.zip"
			sha256 "20ef5685f9e03c55f94ef21e137db129e24eb95394fb54eac6fae2098d6d95ae"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/zcode-proxy/releases/download/v#{version}/zcode-proxy_linux_arm64.zip"
			sha256 "76969e828850f94dc19d984b85e799592eb4f1a77711845c55350a12a1ec2c04"
		else
			url "https://github.com/paularlott/zcode-proxy/releases/download/v#{version}/zcode-proxy_linux_amd64.zip"
			sha256 "f9df578a8b6c003a978532bb021da602759760536e13aada4b7dbcfd5bc2ba38"
		end
	end

	def install
		bin.install "zcode-proxy"
	end
end
