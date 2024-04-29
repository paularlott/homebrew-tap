class Knot < Formula
	desc "A management tool for developer environments running within a Nomad cluster"
	homepage "https://getknot.dev"
	version "0.7.5"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			# get sha256: shasum -a 256 <file>
			sha256 "681254e434c66eeaf75c346d5eb65bdcaf5bbd5e845a3d7aa91bb58dd64ee6d5"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
		 sha256 "07125d488989bdbdccf1fd192d51f631c292c17e068af77b43a44a9ed2e21726"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "b63b3ed415ffae9754722e21a5b6ad2ae62a2c6d403cdc727dcc4bc0eaa1d2c9"
		else
		 url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
		 sha256 "7bd4452b048d9f67c41f77ee412d7591d6e2929f03a79c2db94c9f55691531db"
		end
	end

	def install
		bin.install "knot"
	end
end
