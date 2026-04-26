class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.6.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "fcf73f21f3c65fdc701b3723aa12c0cd295fab641f0dc68c8f0766e3c998b3e4"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "f21d95daabb199af160cf82c21d4712351f42dcd5221f916a142a12163531734"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "599ffaebe84e38bad627674e8ea0868bd42a3d577e4237ca00ee6b36f325e838"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "cf04ccc6218eba8ab5a0e304e5d3e8e179e897149f0805d5b15868521b987bd8"
		end
	end

	def install
		bin.install "scriptling"
	end
end
