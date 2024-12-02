class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.11.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "6f062f31a8f732973ecc312bf29a845d86bd796dcab4545d22534fc00230e629"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "3a600421039616d05cb17736b3b5e11085f84f55f251f403e096e26d73d682b2"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "dde48cea33cfb3ae2fd2015691acbb064c11815e0bc8643da3fce93a40df52d2"
		else
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "d940154f696e7048f88b33ea5cbf2f62178b74ea8d790bec6a963c5f510fac89"
		end
	end

	def install
		bin.install "knot"
	end
end
