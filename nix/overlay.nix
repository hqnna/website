new: old: {
  zine-ssg = old.stdenv.mkDerivation (self: {
    pname = "zine-ssg";
    version = "0.11.1";
    doBuild = false;
    doCheck = false;

    src = builtins.fetchTarball {
      url = "https://github.com/kristoff-it/zine/releases/download/v${self.version}/x86_64-linux-musl.tar.xz";
      sha256 = "04kcx1j1wh3p0nd5lfc8hdhn29x9x4cxfh3c7zvi8n2kbq99m8c7";
    };

    installPhase = ''
      runHook preInstall
      install -m755 -D zine $out/bin/zine
      runHook postInstall
    '';
  });
}
