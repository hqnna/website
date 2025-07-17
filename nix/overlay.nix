new: old: {
  zine-ssg = old.stdenv.mkDerivation (self: {
    pname = "zine-ssg";
    version = "0.10.4";
    doBuild = false;
    doCheck = false;

    src = builtins.fetchTarball {
      url = "https://github.com/kristoff-it/zine/releases/download/v${self.version}/x86_64-linux-musl.tar.xz";
      sha256 = "0p4f3728q9v2i424mqsc8ixi4gphzfk7z493skz5fzwfrcr6wqdw";
    };

    installPhase = ''
      runHook preInstall
      install -m755 -D zine $out/bin/zine
      runHook postInstall
    '';
  });
}
