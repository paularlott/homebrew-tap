class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.34.2"
  conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	on_macos do
		on_arm do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "cc947f119197dca99f3e702d0f1bc2573336b3321811cd3cd8e50ec23fe9d81a"
		end
		on_intel do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "3d86f4d8121dede552848e15a70184b52fc4ce5be0d1b8ad8988418d508d5d5b"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "10cd4048c26815b419a59447aeb4a676ace4974ddfd5a2cad91ed1393b9949dd"
		end
		on_intel do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "1c1f997b5e5fb087503a75e46de8e593ca80bdd5fc1c003c60b494f7ce1a5c0d"
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
