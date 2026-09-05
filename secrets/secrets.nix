let
  motyaEnanan = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE9UcVPDl+dOU+j1yzycCzsUrEPjJ+QxY6ntIL91UecH";
  motyaAmia = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILwrLTumQjBG0paEu9Gv9EZGkAbUcPoUWtzliI1xmPto";
  users = [ motyaEnanan motyaAmia ];

  system = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKYyzDsbTnA+OhtbSL+vG4Dhg3AUTLP4jZJdFHbYrA8A";

  systems = [system];
in
{
  "secret1.age".publicKeys = [ motyaEnanan system ];
  "slskd.age".publicKeys = [ motyaEnanan system ];
  "armored-secret.age" = {
    publicKeys = [ users ];
    armor = true;
  };
}
