class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.12.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "5ac8a5e3781cc0f26b34d84691a3af03732b57fb5524b30f90cf3387379fe314"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "cfa58f08c61e9ad4090e8cefb1197a22f4597707b333c2d1856b1c1ae064bd7e"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "064e62aed86dcd1d2975d4824629797ac24456be094e81b923f53b5cb652c7bb"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "b0d4de7ac83546710c2a68b50e0c8127f595371325f8b348ea4310345ecf31f7"
		end
	end

	def install
		bin.install "scriptling"
	end
end
