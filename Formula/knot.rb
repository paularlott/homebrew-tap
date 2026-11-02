class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.41.1"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	on_macos do
		on_arm do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "40d29126ff85131a2a19c384f59a9104aa39b04f8fa2ca6ce97563c747d72363"
		end
		on_intel do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "8d499d7cb4ebc1e4aa13e157d6373d5893b8f74d2b1e54ff6a79f949f26ccec7"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "d745b7d343f61f4b4983185dcd87bc1d3d9eac300806eb97a3f0ac4836e3beda"
		end
		on_intel do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "caf57e949c63422438e6718c159bbf0819de0c45787d6a03d12fb4290511e4e9"
		end
	end

	def install
		if OS.mac?
			# The cask also links the knot CLI into bin; refuse to fight over
			# the symlink. Homebrew has no formula<->cask conflicts_with DSL.
			if (HOMEBREW_PREFIX/"Caskroom/knot").directory?
				odie "knot cask is installed, which also provides the knot CLI. Uninstall it first:\n  brew uninstall --cask paularlott/tap/knot"
			end

			# macOS zip contains Knot.app — install under libexec, symlink the CLI.
			# Homebrew stages single-root archives from inside the root, so the
			# working directory is Knot.app itself and "Contents" is at its root.
			(libexec/"Knot.app").install "Contents"
			bin.install_symlink libexec/"Knot.app/Contents/MacOS/knot"
		else
			bin.install "knot"
		end
	end

	def caveats
		on_macos do
			<<~EOS
				For the desktop app with menu bar tray, install the cask instead:
				  brew install --cask paularlott/tap/knot
			EOS
		end
	end
end
