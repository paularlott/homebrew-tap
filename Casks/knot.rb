cask "knot" do
	version "0.34.0"

	on_arm do
		sha256 "92186996341b49ce6d36796ea8e3e987aaccdc51da0e3ee045a1e2e2a7c3b831"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
	end
	on_intel do
		sha256 "e09eef4e579ebaa306b102c55488a7e36a507cf9adb3e6023f7cacf7b0eac54f"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
	end

	name "Knot"
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"

	app "Knot.app"

	# Also make the CLI available on PATH so the knot command works from the
	# terminal without separately installing the formula.
	postflight do
		# The formula also links the knot CLI; refuse to fight over the symlink.
		if File.directory?("#{HOMEBREW_PREFIX}/Cellar/knot")
			raise "knot formula is installed, which also provides the knot CLI. Uninstall it first:\n  brew uninstall knot"
		end

		# The app is ad-hoc signed (not notarized) and brew quarantines cask
		# downloads, which makes Gatekeeper kill the binary on first exec.
		# Strip the flag so the app and the CLI link work immediately.
		# Non-bang system_command: xattr -d fails if the attribute is absent.
		system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Knot.app"]

		FileUtils.ln_sf("/Applications/Knot.app/Contents/MacOS/knot", "#{HOMEBREW_PREFIX}/bin/knot")
	end

	uninstall_postflight do
		FileUtils.rm_f "#{HOMEBREW_PREFIX}/bin/knot"
	end

	zap trash: [
		"~/.config/knot",
		"~/.knot.toml",
	]
end
