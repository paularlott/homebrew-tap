class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.13.0"

	on_macos do
		on_arm do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "6bdf7c89782f8afe31f14e7c079a20e8f32c8a8f6b6e8ff67316f5d867c47e94"
		end
		on_intel do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "41f42483f65ed820a3a6cca6da826ad3e6419af6055b875a2a876d98b4423994"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "d765847ce289163bbfcc27761587bb8eb0773c92bd04c37388ebf62e116e4e45"
		end
		on_intel do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "0f0246d0967e139fc667fda30c5be69027f8df2ca585ac2cf094235f4a069e08"
		end
	end

	def install
		if OS.mac?
			# The cask also links the llmrouter CLI into bin; refuse to fight
			# over the symlink. Homebrew has no formula<->cask conflicts_with DSL.
			if (HOMEBREW_PREFIX/"Caskroom/llmrouter").directory?
				odie "llmrouter cask is installed, which also provides the llmrouter CLI. Uninstall it first:\n  brew uninstall --cask paularlott/tap/llmrouter"
			end

			# macOS zip contains "LLM Router.app" — install to libexec, symlink
			# binary. Homebrew stages single-root archives from inside the root,
			# so the working directory is LLM Router.app itself and "Contents"
			# is at its root.
			(libexec/"LLM Router.app").install "Contents"
			bin.install_symlink libexec/"LLM Router.app/Contents/MacOS/llmrouter"
		else
			bin.install "llmrouter"
		end
	end

	def caveats
		on_macos do
			<<~EOS
				For the full desktop GUI experience, install the cask instead:
				  brew install --cask paularlott/tap/llmrouter
			EOS
		end
	end
end
