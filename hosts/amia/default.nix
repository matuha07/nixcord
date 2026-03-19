{}:

{
   imports = [
    ../../modules/common
    ../../modules/darwin
   ];

  networking.hostName = "amia";

  users.users.motya = {
    name = "motya";
    home = "/Users/motya";
  };

}