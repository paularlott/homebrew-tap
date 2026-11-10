cask "llmrouter" do
	version "0.17.0"

	on_arm do
		sha256 "c9d69c9efa2bb04589d4a49d93f2f6b2460fb73d4331ab0e92ab3c2908166fc9"
		url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
	end
	on_intel do
		sha256 "fcf13991f1447e76055d39f76ab1048b9aa64257b4c5ad443ed393af43053235"
		url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
	end

	name "LLM Router"
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"

	app "LLM Router.app"

	# Also make the binary available on PATH so the llmrouter command works
	# from the terminal without separately installing the formula.
	postflight_steps do
		# The formula also links the llmrouter CLI; refuse to fight over the symlink.
		# A failing run step aborts the install and prints the message on stderr.
		if_path_exists "{{HOMEBREW_PREFIX}}/Cellar/llmrouter" do
			run "/bin/sh", args: ["-c",
				"printf '%s\\n' " \
				"'llmrouter formula is installed, which also provides the llmrouter CLI. Uninstall it first:' " \
				"'  brew uninstall llmrouter' >&2; exit 1"]
		end

		# overwrite: true replaces any existing link (was FileUtils.ln_sf);
		# remove_on_uninstall unlinks the CLI on uninstall, replacing the old
		# uninstall_postflight hook.
		symlink "{{appdir}}/LLM Router.app/Contents/MacOS/llmrouter", "{{HOMEBREW_PREFIX}}/bin/llmrouter",
			overwrite: true, remove_on_uninstall: true
	end

	zap trash: [
		"~/Library/Caches/com.paularlott.llmrouter",
		"~/Library/Preferences/com.paularlott.llmrouter.plist",
		"~/Library/Saved Application State/com.paularlott.llmrouter.savedState",
	]
end
