# tofu-env

dev-env for OpenTofu

# history

- 01/22/2024 created the repo and transferred to daddy-knows-best
- 01/28/2024 tfenv and tgenv
- 09/26/2024 ubuntu24

# how to run

```
$ docker compose pull
[+] Pulling 17/17
 ✔ dev-env 16 layers [⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]      0B/0B      Pulled                                                                                                                                           3.2s
   ✔ 29202e855b20 Already exists                                                                                                                                                                         0.0s
   ✔ 32b1aecb64af Already exists                                                                                                                                                                         0.0s
   ✔ cbfe5fe7dd2d Already exists                                                                                                                                                                         0.0s
   ✔ 3ac51c1e99b0 Already exists                                                                                                                                                                         0.0s
   ✔ c62c70c6dc58 Already exists                                                                                                                                                                         0.0s
   ✔ 127f69e8f3f9 Already exists                                                                                                                                                                         0.0s
   ✔ b06d9d3b1d63 Already exists                                                                                                                                                                         0.0s
   ✔ 43de8e992f35 Already exists                                                                                                                                                                         0.0s
   ✔ 20977f43bd8b Already exists                                                                                                                                                                         0.0s
   ✔ d9379350f532 Already exists                                                                                                                                                                         0.0s
   ✔ 0462a8dce828 Already exists                                                                                                                                                                         0.0s
   ✔ c20b31284929 Already exists                                                                                                                                                                         0.0s
   ✔ 2787c86fe6d9 Already exists                                                                                                                                                                         0.0s
   ✔ 2b4c20a5ccdd Pull complete                                                                                                                                                                          0.4s
   ✔ 6ee8a15dbc27 Pull complete                                                                                                                                                                          1.5s
   ✔ 4f4fb700ef54 Pull complete                                                                                                                                                                          0.3s
SYs-MBAir-M1:tofu-env seungyeop$ docker compose run --rm dev-env
08:19:21 ubuntu@0dce6b63ae51 dev-env ±|main|→ cd 01-ibmcloud-tfp/
/dev-env/01-ibmcloud-tfp
08:19:35 ubuntu@0dce6b63ae51 01-ibmcloud-tfp ±|main|→ tofu init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of ibm-cloud/ibm from the dependency lock file
- Using previously-installed ibm-cloud/ibm v1.61.0

OpenTofu has been successfully initialized!

You may now begin working with OpenTofu. Try running "tofu plan" to see
any changes that are required for your infrastructure. All OpenTofu commands
should now work.

If you ever set or change modules or backend configuration for OpenTofu,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
08:19:49 ubuntu@0dce6b63ae51 01-ibmcloud-tfp ±|main|→ tofu plan

No changes. Your infrastructure matches the configuration.

OpenTofu has compared your real infrastructure against your configuration and found no differences, so no changes are needed.
08:19:55 ubuntu@0dce6b63ae51 01-ibmcloud-tfp ±|main|→
```
