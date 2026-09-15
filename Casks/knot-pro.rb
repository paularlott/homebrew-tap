cask "knot-pro" do
	version "0.35.0"

	on_arm do
		sha256 "0b3068590bce0949e777a0f5be1733b1e0f6defbb216b4af642d583c4dc4f5cf"
		url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
	end
	on_intel do
		sha256 "d4643e8dca8f1ea17984868b290960408872323e3f20feb0b1c26fc27efda62c"
		url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
	end

	name "Knot Pro"
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"

	app "Knot.app"

	# Also make the CLI available on PATH so the knot command works from the
	# terminal without separately installing the formula.
	postflight_steps do
		# The formula also links the knot CLI; refuse to fight over the symlink.
		# A failing run step aborts the install and prints the message on stderr.
		if_path_exists "{{HOMEBREW_PREFIX}}/Cellar/knot-pro" do
			run "/bin/sh", args: ["-c",
				"printf '%s\\n' " \
				"'knot formula is installed, which also provides the knot CLI. Uninstall it first:' " \
				"'  brew uninstall knot-pro' >&2; exit 1"]
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
