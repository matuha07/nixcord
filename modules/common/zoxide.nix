{ ... }:
{
  programs.zoxide = {
    enable = true;

    options = [
      "--cmd"
      "cd"
    ];
    enableNushellIntegration = true;

  };
}
