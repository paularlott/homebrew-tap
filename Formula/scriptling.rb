class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.12.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "43045f2cb8025b6c583eb27d82c7037912e22f5355c0de615f02add3fa6bfd40"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "28b2a120283314a3bc413dcc506b14df86602df99bc48efa23b63dbeec1689a4"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "fef5f91d106b87558f1e7dda0faa46e1ad1b1cb13352d33b0490e4453fe3e26d"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "4c8b8cfef153e485d04ca5bb05aa81189a9f98351549ee2f17b679893c112369"
		end
	end

	def install
		bin.install "scriptling"
	end
end
