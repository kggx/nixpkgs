{
  lib,
  fetchFromGitHub,
  buildGoModule,
  stdenv,
}:
buildGoModule (finalAttrs: {
  pname = "tmpo";
  version = "0.8.1";

  src = fetchFromGitHub {
    owner = "DylanDevelops";
    repo = finalAttrs.pname;
    rev = "v${finalAttrs.version}";
    hash = "sha256-dnHvkTFX6SAMnyLewgYDj3a4EwKAQp7B8j0Mxuyy37E=";
  };

  proxyVendor = true;
  vendorHash = "sha256-mj9gRkFiNyQDlp8U9G27uRENvulmuZhnHuIDc3FESvA=";

  checkFlags = [
    "-skip=TestIsInGitRepo"
  ];

  ldflags = [
    "-X main.Version=${finalAttrs.version}"
    "-X main.Commit=${finalAttrs.src.rev}"
  ];

  meta = {
    description = "A minimal CLI time tracker for developers";
    homepage = "https://github.com/DylanDevelops/tmpo";
    license = lib.licenses.mit;
    mainProgram = "tmpo";
    platforms = lib.platforms.unix;
    maintainers = with lib.maintainers; [ kggx ];
  };
})
