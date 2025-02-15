args:
import ../generic.nix (
  args
  // {
    version = "15.4.21";
    hash = "sha256-n5dAJ5ilq5nHo3neQzCUFnDRwLhArwleMSho4/g0MT4=";
    vendorHash = "sha256-bW8ztNeSzxUNtbuBtxIya9TeGfktC+/fz9iXB0GL0Mg=";
    yarnHash = "sha256-ZaLLrcwAeq6TQ1SaA2few4s0HqktOZEpxCTcNGloGfk=";
    cargoLock = {
      lockFile = ./Cargo.lock;
      outputHashes = {
        "boring-4.4.0" = "sha256-4wdl2kIA5oHQ0H6IddKQ+B5kRwrTeMbKe1+tAYZt2uw=";
        "ironrdp-async-0.1.0" = "sha256-nE5O/wRJ3vJqJG5zdYmpVkhx6JC6Yb92pR4EKSWSdkA=";
        "sspi-0.10.1" = "sha256-fkclC/plTh2d8zcmqthYmr5yXqbPTeFxI1VuaPX5vxk=";
      };
    };
  }
)
