class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.6.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "fd0682fa6fc16248b774cbb43026e143e0420685135ce15df1e1c4816db99339"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "22cd094f9620d28a84a197613b2090edb4701c23e30fc9d08544605e07bc1b68"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "b5c81272e63849f906f1d6fde8bc88dc0d33e3d0cfe6aeb54ca65aed2cb83845"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "bc411c0d6f4ea12beecf37010f2265c65f32d728f8f13caf478d1be6d56cdc3d"
		end
	end

	def install
		bin.install "knot"
	end
end
