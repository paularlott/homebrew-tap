class KnotPro < Formula
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"
	license "All rights reserved"
	version "0.43.0"
  conflicts_with "knot", because: "knot is the open-source version of knot-pro and cannot be installed alongside the pro version"
	on_macos do
		on_arm do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "25effb96dfa86ee53e548ee9f5c182d5732619cf9a031779307580b55ba15a41"
		end
		on_intel do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "ad3a7f6d6b323505011ee42a8063768e29f50dc2f111d37da3102cfb062e8232"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "67baa63e6123f7eaba62b903aaa2c6f69735d534edcf0c50eafe8a541dac5da9"
		end
		on_intel do
			url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "4f6d4a84dee81843871c88016ef4a235c33ef34ab8513f3464adc51ca910f928"
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
