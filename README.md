# Zgenom Extension for GitHub Releases

You need to install [gh](https://cli.github.com) and use it with
[zgenom](https://github.com/jandamm/zgenom).

## Example

```zsh
source "${HOME}/.zgenom/zgenom.zsh"

zgenom autoupdate --background

if ! zgenom saved; then
    zgenom load jandamm/zgenom-ext-release
    # Download all assets matching *apple*.
    # Also extract from archive and add to $PATH.
    zgenom release ajeetdsouza/zoxide --pattern '*apple*'
fi
```

This example would add the assets to `$ZGEN_DIR/ajeetdsouza/zoxide/___release`.

**Note:** Since this does not clone a git repository the release is not updated
when `zgenom update` is executed. It is updated when a new shell is started
where `init.zsh` is missing. Shouldn't be an issue using
`zgenom autoupdate --background`.

## Options

- `--force`:    Always update. Even when pattern/version didn't change.
- `--pattern`:  Specify a glob which should match the downloaded asset.
- `--no-untar`: Don't extract tar.gz assets.
- `--no-bin`:   Don't add executable files to `$PATH`.
