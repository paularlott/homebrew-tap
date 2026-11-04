class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.13.3"

	on_macos do
		on_arm do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "02707f35f789745b35b751f0348e7b9dae411b5990069522f7124b6bc2a63392"
		end
		on_intel do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "85568c8ff3dc85d3749c80317e56215bfc9d25bbcdf167e0385832ce565e213f"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "306193dfb3902d2b60c716037091fd5f65d5dddc9bdfba7be27df6424afcfb7a"
		end
		on_intel do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "b50c2786ef6855c126b8f1310d3bb5f88843a83075962e1e7686cb424e86683b"
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
