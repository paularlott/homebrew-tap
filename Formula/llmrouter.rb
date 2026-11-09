class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.16.1"

	on_macos do
		on_arm do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "b0819f76e19d3e00e1dd0bc1af569a94bc5b3acb14e2086dc33e6eecf285915d"
		end
		on_intel do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "6e7678f507c129dbd0a05bb58d2437073885c68fdea0d84448950bc4232f10a9"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "e9cf9edd991dd66f97e43e809b1b98b7851d972f692757aa96ff69f4ef883418"
		end
		on_intel do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "cbb9b344f083e995ac86d366ba66ff9129cd17be4c69e2b737e19353920aa0c5"
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
