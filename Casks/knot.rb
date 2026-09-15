cask "knot" do
	version "0.35.0"

	on_arm do
		sha256 "35e785a3744eacf3a103451424f7faa8da18bc7ea4ce1953b61c20af83652199"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
	end
	on_intel do
		sha256 "6beeb1c589a724e8df94792ed7b4af50bd06a0a95634985956870447234705a7"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
	end

	name "Knot"
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"

	app "Knot.app"

	# Also make the CLI available on PATH so the knot command works from the
	# terminal without separately installing the formula.
	postflight_steps do
		# The formula also links the knot CLI; refuse to fight over the symlink.
		# A failing run step aborts the install and prints the message on stderr.
		if_path_exists "{{HOMEBREW_PREFIX}}/Cellar/knot" do
			run "/bin/sh", args: ["-c",
				"printf '%s\\n' " \
				"'knot formula is installed, which also provides the knot CLI. Uninstall it first:' " \
				"'  brew uninstall knot' >&2; exit 1"]
		end

		# The app is ad-hoc signed (not notarized) and brew quarantines cask
		# downloads, which makes Gatekeeper kill the binary on first exec.
		# Strip the flag so the app and the CLI link work immediately.
		# must_succeed: false as xattr -d fails if the attribute is absent.
		run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Knot.app"], must_succeed: false

		# overwrite: true replaces any existing link (was FileUtils.ln_sf);
		# remove_on_uninstall unlinks the CLI on uninstall, replacing the old
		# uninstall_postflight hook.
		symlink "{{appdir}}/Knot.app/Contents/MacOS/knot", "{{HOMEBREW_PREFIX}}/bin/knot",
			overwrite: true, remove_on_uninstall: true
	end

	zap trash: [
		"~/.config/knot",
		"~/.knot.toml",
	]
end
