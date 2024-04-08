class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.6.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "094f647307960f46647cf56280f5cc25bb2a114ab9c8dc6673b99355ba7e580f"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "154f71a9325cfd5619441f4d20375152bfcd8fc90963085cdee15d9b3da56de7"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "5f852b773fb2bb774a812ede0917f6e84ec434b661ad09586a5c5e2e8d9faca8"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "1473c2dbd77fe9b8daf6f2375ac1ee2b86a61b9ed67396ad57a021ca78d85872"
		end
	end

	def install
		bin.install "knot"
	end
end
