class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.9.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "c7b4212177c0cbe96f2e75fc5c751e555bf2099400bb72021c8497f43945c4b4"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "6515ca6f83ae6e9155ccf9cac9c020640f53c1303bee306bfcfb4d48e3118082"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "2c6231ef36c8976ff492b6b3a35187c8de266008e7288c0d54eb53963c6ed6f5"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "cd069303e82da43be7d426e2834dfb006802905c341729a89bab930c1ae0ccf4"
		end
	end

	def install
		bin.install "knot"
	end
end
