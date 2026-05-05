class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.6.6"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "dcc623822d22d3d9a8578b430757485332b204229d7da5d824ee156ebfc950b9"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "1a9dc2e9689a7304b106ae554907faed0be0b26462f5ef00d0efa7d8689ed24a"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "a73c41f1b7d6f44730a05f5259de73e613219d5f8db1bdff122b964445b4b1a5"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "edaf8fb42fdf4545d2a80821636816395c85ca12333ecbfeb31a5402e6c6a341"
		end
	end

	def install
		bin.install "scriptling"
	end
end
