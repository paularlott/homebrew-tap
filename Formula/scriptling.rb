class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.17.2"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "c28d6ed25cfbd00449b881b32eb5509b523a0c6f2f95235a479fde89f430cd2e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "f0516bed71718246c257b447ea25fda23f7ee6505e2d9f5c74d334a2412f9e72"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "7815ed3ac8d77f1750373df1235b6343fa86b1a20cf6fdaff14db400eb8e71d6"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "495624aa68b94a1ab0137e7cffeb819c8d6c4b56dd9b6c926abb7bda68a75dbb"
		end
	end

	def install
		bin.install "scriptling"
	end
end
