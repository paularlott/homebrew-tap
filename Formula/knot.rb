class Knot < Formula
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"
	license "Apache-2.0"
	version "0.35.0"
  conflicts_with "knot-pro", because: "knot-pro is a commercial version of knot and cannot be installed alongside the open-source version"
	on_macos do
		on_arm do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
			sha256 "35e785a3744eacf3a103451424f7faa8da18bc7ea4ce1953b61c20af83652199"
		end
		on_intel do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
			sha256 "6beeb1c589a724e8df94792ed7b4af50bd06a0a95634985956870447234705a7"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_arm64.zip"
			sha256 "26f90c50dc11f89a7b3f32693d0000dd6f046fe854f24a9caa35135bed5cd444"
		end
		on_intel do
			url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_linux_amd64.zip"
			sha256 "33438ff176d0b1541744f1b512018ecaea6046ba38beb72fcb4216b4c8021664"
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
