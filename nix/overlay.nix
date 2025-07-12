new: old: {
  zine-ssg = old.stdenv.mkDerivation (self: {
    pname = "zine-ssg";
    version = "0.10.3";
    doBuild = false;
    doCheck = false;

    src = builtins.fetchTarball {
      url = "https://github.com/kristoff-it/zine/releases/download/v${self.version}/x86_64-linux-musl.tar.xz";
      sha256 = "1y7dklv4mg4z8mbk564zjsiqfiincrjnalsyh18rn5aj46iwr7iw";
    };

    installPhase = ''
      runHook preInstall
      install -m755 -D zine $out/bin/zine
      runHook postInstall
    '';
  });
}
