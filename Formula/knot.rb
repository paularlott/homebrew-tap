class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.39.0"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	on_macos do
		on_arm do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "6590a889f6329a9aa532b98476d05c55d1ad8c4168c9f40189b655c6a151eda3"
		end
		on_intel do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "e4c2785f1051ddabacfb9735e2be2749c1570f9315c0a3757b704a180182b38c"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "128f24a171b5ccb56d3afa885929d05f25788a3e09f4cdcc24b4ff11e5e6f1a7"
		end
		on_intel do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "64d7caf8894178b4e736ec79b479875b16c39ea6fbd060d26b3bbfb0b108f65e"
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
