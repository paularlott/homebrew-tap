class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.17.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "f5b702a23852e7be5e143f67aa4d2e6d4c0d6dd2c8ce493bcafd86f40dc8138d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "1d440f12edb88e904bfee0050fbc84d92c763c5ce134ffa06f528999922c109d"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "aa70d8a636712fc243a1a620c74996541e7f4946af202caf5c299df1a6d2047f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "e6a90169aec047d9888193961bb607d9030d6853edc8e5be0969b09effc2f431"
		end
	end

	def install
		bin.install "scriptling"
	end
end
