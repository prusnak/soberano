{
  soberano =
    { config, pkgs, ... }:
    {
      deployment.targetEnv = "virtualbox";
      deployment.virtualbox.memorySize = 4096;
      deployment.virtualbox.vcpu = 4;
      deployment.virtualbox.headless = true;
    };
}
