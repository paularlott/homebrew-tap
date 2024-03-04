class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.5.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "bcd4d126a1eb6527e3e76b82104812e0189301ac29c07cd93e17c96ef470f8f1"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "889d06e63fd9a83d5773d3315e828c4c700a5fb2008a2a8c10c94644bdb68769"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "0dc9ce71b558bb0850eea198d5da38d6dbfba9814c6bb8d57f17e3ec47fe5fba"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "d4baf984fb89967828ac0f636dfcfeafd1dd9818af09ea1fe2907549c795f55a"
		end
	end

	def install
		bin.install "knot"
	end
end
