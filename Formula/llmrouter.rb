class Llmrouter < Formula
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"
	license "MIT"
	version "0.11.1"

	on_macos do
		on_arm do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
			sha256 "4bcae48653ba8500c401fd89efc5cffb2acd88626568608d4c56b17dd38dfd94"
		end
		on_intel do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
			sha256 "0af14cd34f3d2b7aa01ea0677e3898fb8dbbc1a8744cb65e9329a3927d52a0a6"
		end
	end

	on_linux do
		on_arm do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-arm64.zip"
			sha256 "f29381a2f6a8a1dd08e3d8be4e956667913b0760558ff097aaa150ad07486519"
		end
		on_intel do
			url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-linux-amd64.zip"
			sha256 "ac5b68785ba0b3f47dfc6841fffd495fa20cad3878427b108a1fc66eda8e0cdc"
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
