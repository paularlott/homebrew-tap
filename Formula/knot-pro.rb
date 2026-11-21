class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.45.1"
  conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	on_macos do
		on_arm do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "095d8408c6579a96fd92e0a92f9ce059eb5cb1727a14200d83c40cebfd1ccc4f"
		end
		on_intel do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "02012f6cfc7965ea82f2a4eaa9c8baf324a2e8be7fb9d8e9171c294c9bf4ee80"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "c1c7ad6081dd55487e0182a9705afd63e57649fee3d5cc4344af911beb4fa7db"
		end
		on_intel do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "31fd93952456037a459ecc6acc8e6cc52b23c72193e0277c64de1dc668841286"
		end
	end

	def install
		if OS.mac?
			# The cask also links the knot CLI into bin; refuse to fight over
			# the symlink. Homebrew has no formula<->cask conflicts_with DSL.
			if (HOMEBREW_PREFIX/"Caskroom/knot-pro").directory?
				odie "knot cask is installed, which also provides the knot CLI. Uninstall it first:\n  brew uninstall --cask paularlott/tap/knot-pro"
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
				  brew install --cask paularlott/tap/knot-pro
			EOS
		end
	end
end
