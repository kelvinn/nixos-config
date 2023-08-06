# Home not included issue

To run:

1. Update `users/myself.nix` with your username.
2. Run the flake

```
nix run nix-darwin --extra-experimental-features "nix-command flakes" -- switch --flake .#"NoHome
```

To enable home, search for `# Fix:` and update the `darwinModules` references to `xxx`. Re-run the above command and home will be included.
