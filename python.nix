world:
self: pkgs:
with pkgs;
{
  matplotlib = matplotlib.overridePythonAttrs {
    doCheck = false;
  };
}
