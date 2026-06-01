class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.9.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "74477c0812c4d882799ab676488a1880f21fc58bdcc229d2688d9c529c922943"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "d47c27fb0e64432d06098342c0509521204fb5b9df985977e42d90048296546c"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "c350ff401bc3161a7630a1dcd41c63d96059b94d2074c9563ca2354fb2a58d76"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "d47ae59c0923812ecc6d883d4abdcaf7eda031fe5eccfdadf321b61a13a11d60"
		end
	end

	def install
		bin.install "scriptling"
	end
end
