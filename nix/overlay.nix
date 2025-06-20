new: old: {
  zine-ssg = old.stdenv.mkDerivation (self: {
    pname = "zine-ssg";
    version = "0.10.2";
    doBuild = false;
    doCheck = false;

    src = builtins.fetchTarball {
      url = "https://github.com/kristoff-it/zine/releases/download/v${self.version}/x86_64-linux-musl.tar.xz";
      sha256 = "0ncgz2ybxp70v9sx1spxl262krn7v8dl7dvrws8ckivi3iaf6aa8";
    };

    installPhase = ''
      runHook preInstall
      install -m755 -D zine $out/bin/zine
      runHook postInstall
    '';
  });
}
