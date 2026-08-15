cask "llmrouter" do
	version "0.9.0"

	on_arm do
		sha256 "eaf7d6e78e7ed21a5760a279032f59b32b3f67db37e02a26b7472531359a2044"
		url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-arm64.zip"
	end
	on_intel do
		sha256 "6907fdf4f77a7b6206b9cae0fa33ff06b99cc7395e695d6f32c452b38a71ef6e"
		url "https://github.com/paularlott/llmrouter/releases/download/v#{version}/llmrouter-darwin-amd64.zip"
	end

	name "LLM Router"
	desc "A unified gateway that aggregates multiple LLM providers behind a single endpoint"
	homepage "https://github.com/paularlott/llmrouter"

	app "LLM Router.app"

	# Also make the binary available on PATH so the llmrouter command works
	# from the terminal without separately installing the formula.
	postflight do
		# The formula also links the llmrouter CLI; refuse to fight over the symlink.
		if File.directory?("#{HOMEBREW_PREFIX}/Cellar/llmrouter")
			raise "llmrouter formula is installed, which also provides the llmrouter CLI. Uninstall it first:\n  brew uninstall llmrouter"
		end

		# The app is ad-hoc signed (not notarized) and brew quarantines cask
		# downloads, which makes Gatekeeper kill the binary on first exec.
		# Strip the flag so the app and the CLI link work immediately.
		# Non-bang system_command: xattr -d fails if the attribute is absent.
		system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/LLM Router.app"]

		FileUtils.ln_sf("/Applications/LLM Router.app/Contents/MacOS/llmrouter", "#{HOMEBREW_PREFIX}/bin/llmrouter")
	end

	uninstall_postflight do
		FileUtils.rm_f "#{HOMEBREW_PREFIX}/bin/llmrouter"
	end

	zap trash: [
		"~/Library/Caches/com.paularlott.llmrouter",
		"~/Library/Preferences/com.paularlott.llmrouter.plist",
		"~/Library/Saved Application State/com.paularlott.llmrouter.savedState",
	]
end
