cask "llmrouter" do
	version "0.9.3"

	on_arm do
		sha256 "fb788bc034c7df596a6324f065d94d76682274282a161c0375f54477b4c893f6"
		url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
	end
	on_intel do
		sha256 "7e19afedd1f52503c5d43d690ba1c79c06568d8cf7f5b4292c1f1579a756d1c0"
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

		# The app is ad-hoc signed (not notarized) and brew quarantines cask
		# downloads, which makes Gatekeeper kill the binary on first exec.
		# Strip the flag so the app and the CLI link work immediately.
		# must_succeed: false as xattr -d fails if the attribute is absent.
		run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/LLM Router.app"], must_succeed: false

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
