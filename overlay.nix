self: pkgs:
with pkgs;
{
  python3 = python3.override {
    self = self.python3;
    CF = null;
    configd = null;
    packageOverrides = import ./python.nix self;
  };

  python = self.python3;

pythonPackages = self.python.pkgs;
python3Packages = self.python3.pkgs;

}
