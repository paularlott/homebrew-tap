cask "knot-pro" do
	version "0.46.1"

	on_arm do
		sha256 "204c1a3d61b973831719a5096e2b2708e7b50b927d00b3850fbc07387bb94760"
		url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
	end
	on_intel do
		sha256 "8f64f4ebe9bbc73d333d5ff88e6ec8763d47c7bf3362ff4ccacff3f87b702edb"
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
