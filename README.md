### Installation

1. Clone the repo into your home directory (`~`).
2. Run the [`config.sh`](config.sh) script, which will extract all of the dotfiles into your home directory: `./config.sh`.
3. If zsh responds with "permission denied," you can give the file execution permission: `chmod u+x ./config.sh`.

### Git Commit and Tag Signature

The `.gitconfig` file included will automatically sign all commits and tags. For this work, you will need to create and associate a new GPG key on your machine.

1. Install `gpg` on your machine.

```bash
brew install gpg
```

2. Generate a new GPG key. Be sure to save your passphrase in a safe place, like a password manager.

```bash
gpg --full-gen-key
```

3. Copy the key ID from the output of the following command. It will look something like `49CA9F42`.

```bash
gpg --list-keys --keyid-format SHORT

# [keyboxd]
# ---------
# sec   rsa4096/49CA9F42 2024-11-01 [SC] [expires: 2025-11-01]
#       ...
# uid         [ultimate] Nicholas Ly <hello@nicholasly.com>
```

4. You can test that the key is working by running the following command. You shouldn't get any errors.

```bash
echo "test" | gpg --clearsign
```

5. Add the key ID to your Git config.

```bash
git config --global user.signingkey 49CA9F42
```

6. Add the key to your GitHub account, by copying the output of the following command and saving it in your GitHub settings.

```bash
gpg --armor --export 49CA9F42
```
