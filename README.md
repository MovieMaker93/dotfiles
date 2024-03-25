# Install for the first time on a new machine

``` 
export GITHUB_USERNAME=MovieMaker93
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

# Update changes

```
chezmoi git pull -- --autostash --rebase && chezmoi diff
```
If you're happy with the changes, then you can run

```chezmoi apply``` 
