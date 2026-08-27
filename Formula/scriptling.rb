class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.21.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "b95f0ea7da7ac85f6644441c349762e55d75ef50b6a1ce1f9266f109c7bdbb38"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "015658f658646fff3e3c672da4858e10043c4010a8d697f2b6e7d88a1fa3e4bc"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "5e2fe20fce167bdc372088325d18ed391f3b1a960208ef26e0dafdc6c309b829"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "025b1a9637273821c9573200c9f13ca863f225273a2d281ed612e7a7ec0425e3"
		end
	end

	def install
		bin.install "scriptling"
	end
end
