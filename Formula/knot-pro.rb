class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.44.0"
  conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	on_macos do
		on_arm do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "c769439bf37ef68dfde2e0cc6d3860f941a0581c95a812dcd3068dffe17e63c5"
		end
		on_intel do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "4fbbcd117a78b2652634967de242c483ef29782957a65c917d9f61259faa4f89"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "a0d77a9564499867f6060f0cfc11af4be2bb5f79d7bdc2588d3d91028b39b86e"
		end
		on_intel do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "0f74be4bcbc539961d0453b067345ae19c7204f611aa280e6e0641c9be69a1c7"
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
