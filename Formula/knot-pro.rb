class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.37.0"
  conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	on_macos do
		on_arm do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "5c8140704266b2d9a7be0cc936c667ed133bc2c2b6119f64474a78e52da624bc"
		end
		on_intel do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "57cb23e14c70de03f229d5a50fb573e85468cf25273f680108b0782dd3399776"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "60a9c834f314b0aa5ef0f6fdfa5b7f7ccaca79eb7e1e1f8a9278f16c4e35eeea"
		end
		on_intel do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "f1bb51555d174f68d54696f63833fffbbd98bd580b6e4f770050932e03993c0f"
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
