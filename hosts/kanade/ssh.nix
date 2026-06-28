{ ... }:
{
  users.users.motya.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE9UcVPDl+dOU+j1yzycCzsUrEPjJ+QxY6ntIL91UecH mmotyaa@proton.me"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILwrLTumQjBG0paEu9Gv9EZGkAbUcPoUWtzliI1xmPto motya@MacBookPro"
  ];

  services.openssh = {
    enable = true;
    openFirewall = true;
    settings = {
      PasswordAuthentication = false;
      MaxAuthTries = 3;
      PerSourcePenalties = "crash:3600s authfail:3600s max:86400s";
      PermitRootLogin = "no";
    };
  };
}
