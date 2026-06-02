{ pkgs, ... }:
{
  # 99.99% are from https://github.com/RGBCube/ncc/blob/dentride/modules/linux-kernel.mod.nix
  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernel.sysctl = {
    "kernel.sysrq" = 0;

    "kernel.kptr_restrict" = 2;
    "kernel.dmesg_restrict" = 1;
    "fs.protected_fifos" = 2;

  };

  boot.blacklistedKernelModules = [
    "appletalk"
    "psnap"
    "rds"
    "rose"
    "sctp"
    "tipc"
    "x25"

    "adfs"
    "affs"
    "befs"
    "bfs"
    "cifs"
    "cramfs"
    "efs"
    "erofs"
    "exofs"
    "f2fs"
    "freevxfs"
    "gfs2"
    "hpfs"
    "jffs2"
    "minix"
    "omfs"
    "qnx4"
    "qnx6"
    "sysv"
    "udf"

    "firewire-core"
  ];
}
