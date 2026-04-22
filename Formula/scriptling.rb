class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.5.7"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "8387f216965f3299a2e01d560cdf6c6db365163243f00c808a36a2546b86d6b6"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "8904b1d68cd65a6ac2807c055423aa5ef25c57b1b6353767b16e87890f48f923"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "cf847034b312b69d8a4dd596acf959a50157c0ae1fa5958a5a7714588edf5256"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "025e6945fb67ef9ffbfabcd421cdd2021e0310f415847d5aa696877b9f0cb1df"
		end
	end

	def install
		bin.install "scriptling"
	end
end
