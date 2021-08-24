# dotfiles-nixos

[NixOS](https://nixos.org/) dotifiles managed by [yadm](https://github.com/TheLocehiliosan/yadm).

## What is included

- [maxdevjs/dotfiles-kitty](https://github.com/maxdevjs/dotfiles-kitty)
- [maxdevjs/dotfiles-rofi](https://github.com/maxdevjs/dotfiles-rofi)

## Troubleshooting 🤪

As [Github](https://github.com/) [renamed](https://github.com/github/renaming) its master branch to main, exists the
possibility that [yadm](https://github.com/TheLocehiliosan/yadm) will complain
when pushing.

The solution will most likely to move the `master` branch to `main`:

```shell
$ git branch -m master main
```

The previous command renames the branch called `main` to `main` thanks to the `-m` flag.

```shell
$ man git-branch
```

Now it should work 🥳:

```shell
$ push -u origin main
```

