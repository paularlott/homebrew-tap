class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.16.0"

	on_macos do
		on_arm do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "d72bd8c1fa3127162233d73b57d31a0318678e85df413291516e3202e48ce754"
		end
		on_intel do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "ff1f0f23226ed61eea0946d359377923d259a42d51ccca9c0792705a62a314c4"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "272231a17b2c68899b336f01e59d24c403073d6145b9d977d232e87ab51ad751"
		end
		on_intel do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "cc726beb2e4a63ea6146dc73c343fa8232488d555df0977aae3b4783532f39dd"
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
