class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.3.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "a59b17474ddb7c9e21a5cd7a29cab496a93e374137cb0d7b57f8adb073ffcfe2"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "bac228a203ef40b05ebdac7b24e1a839c2ce2c2b90e79580437ab9718fa48e5f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "b0af1a73170abff5d7540de88517481d0f8f4d18b1882f7b618c637031692104"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "a23f99f01080b0d0a3f16e3c155e1a812b346f919c297eb8c9f8dff310e489cc"
		end
	end

	def install
		bin.install "knot"
	end
end
