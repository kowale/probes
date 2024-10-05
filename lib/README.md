# Lib for probes

NixOS options for research environments,
planning an interface not unlike below

```
{
  my.probes = {
    cla = {
      title = "Computational linear algebra"
      torch.enable = true;
    };
    lean = {
      title = "Proof assist with lean4 and mathlib"
      lean.enable = true;
    };
    rp = {
      title = "Rough paths and signatures"
      jax.enable = true;
      lean.enable = true;
    };
  };
}
```

