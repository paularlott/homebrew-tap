class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.20.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "34f0d483aef12a54fffee7857ab0065d46b770b3652469e2f5518584ae94be06"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "03afef4d32a515d0d95474b8c0dff36020c9582bee30b856ed6f295c3959dad6"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "38b1e493caeded7b3e618b507f24682ba26f51e7ad5fb9d719ff7a5df6ca315f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "c18c52c2bd7c67990898c2f1a84c4d5f07079f1a8a83ba9fac2c8958d21b7cfe"
		end
	end

	def install
		bin.install "scriptling"
	end
end
