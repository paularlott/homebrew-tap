cask "knot-pro" do
	version "0.42.1"

	on_arm do
		sha256 "027d589e496957e0c7e88217c202db62207adf3f89e53179e06c6e397e2fd523"
		url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
	end
	on_intel do
		sha256 "3ed045527a4ee3f22f51772b36d08b1b9e8af29ae6ce7714226d630b263739d3"
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
