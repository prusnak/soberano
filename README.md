# Soberano

## Cheat sheet

### Deployment

Start NixOps

```
nix-shell -p nixops
```

Create deployment

```
nixops create soberano.nix soberano-vbox.nix -d SoberanoVbox
```

Deploy or redeploy

```
nixops deploy -d SoberanoVbox --force-reboot
```

Destroy deployment

```
nixops destroy -d SoberanoVbox
```

### Usage

SSH into the instance

```
nixops ssh -d SoberanoVbox soberano
```

Obtain the hidden service hostname

```
cat /var/lib/tor/onion/soberano/hostname
```
