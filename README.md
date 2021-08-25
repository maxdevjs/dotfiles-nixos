# dotfiles-nixos

[NixOS](https://nixos.org/) dotifiles managed by [yadm](https://github.com/TheLocehiliosan/yadm).

 [NixOS](https://nixos.org/) [configuration](https://github.com/maxdevjs/dotfiles-nixos-config)

## What is included

- [maxdevjs/dotfiles-fish](https://github.com/maxdevjs/dotfiles-fish)
- [maxdevjs/dotfiles-kitty](https://github.com/maxdevjs/dotfiles-kitty)
- [maxdevjs/dotfiles-rofi](https://github.com/maxdevjs/dotfiles-rofi)

## Troubleshooting 🤪

As [Github](https://github.com/) [renamed](https://github.com/github/renaming) its master branch to main, exists the
possibility that [yadm](https://github.com/TheLocehiliosan/yadm) will complain
when pushing.

<details>
<summary>Solution</summary>

The solution will most likely to move the `master` branch to `main`:

```yaml
$ git branch -m master main
```

The previous command renames the branch called `main` to `main` thanks to the `-m` flag.

```yaml
$ man git-branch
```

Now it should work 🥳:

```yaml
$ push -u origin main
```

</details>
