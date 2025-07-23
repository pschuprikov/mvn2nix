self: super: {
  mvn2nix = self.callPackage ./derivation.nix { jdk = super.jdk11_headless; };

  mvn2nix-bootstrap = self.callPackage ./derivation.nix { bootstrap = true; };

  buildMavenRepository =
    (self.callPackage ./maven.nix { }).buildMavenRepository;

  buildMavenRepositoryFromLockFile =
    (self.callPackage ./maven.nix { }).buildMavenRepositoryFromLockFile;
}
