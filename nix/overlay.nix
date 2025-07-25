new: old: {
  zine-ssg = old.stdenv.mkDerivation (self: {
    pname = "zine-ssg";
    version = "0.11.0";
    doBuild = false;
    doCheck = false;

    src = builtins.fetchTarball {
      url = "https://github.com/kristoff-it/zine/releases/download/v${self.version}/x86_64-linux-musl.tar.xz";
      sha256 = "0rsb64lm5r3csmgd6ynnhq766kg9vfs0a0k1rgy28fq337zcmq20";
    };

    installPhase = ''
      runHook preInstall
      install -m755 -D zine $out/bin/zine
      runHook postInstall
    '';
  });
}
