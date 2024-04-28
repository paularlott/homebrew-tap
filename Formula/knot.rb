class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.7.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "7b121c40c47c1fbf2421710278affa2e72ed820e373e2e54a90354a6578826cd"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "ac30bad6f48bf848e2687bf04258b74079b5e44febfc4ae5d7fba56d73efe541"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "6ecae630f9de3a247e77e41755a5f6f7ea4145d674696dbbeb5ede5f1efc8aa7"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "9d4b6a4cd43922b13e16f7bf4b368742fec4ab89c9e75b2caafe8022f253f0c1"
		end
	end

	def install
		bin.install "knot"
	end
end
