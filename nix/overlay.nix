new: old: {
  zine-ssg = old.stdenv.mkDerivation (self: {
    pname = "zine-ssg";
    version = "0.11.1";

    phases = [ "installPhase" ];

    src = builtins.fetchTarball {
      url = "https://github.com/kristoff-it/zine/releases/download/v${self.version}/x86_64-linux-musl.tar.xz";
      sha256 = "krPomEDxKktsYnhSSAO9+OGA8UeMrgN3gNpKQr5v5yA=";
    };

    installPhase = ''
      runHook preInstall
      install -m755 -D $src $out/bin/zine
      runHook postInstall
    '';
  });
}
