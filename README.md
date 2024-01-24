# tofu-env
dev-env for OpenTofu

# history
01/22/2024 created the repo and transferred to daddy-knows-best

# how to run

```
$ docker compose run --rm dev-env
07:25:09 ubuntu@1e3e8b93e4e8 dev-env ±|main ✗|→ tofu version
OpenTofu v1.6.0
on linux_amd64
07:25:18 ubuntu@1e3e8b93e4e8 dev-env ±|main ✗|→ tofuenv list
* 1.6.0 (set by /home/ubuntu/.tofuenv/version)
08:02:45 ubuntu@498b898d3351 dev-env ±|README|→ cd 01-ibmcloud-tfp/
/dev-env/01-ibmcloud-tfp
08:02:53 ubuntu@498b898d3351 01-ibmcloud-tfp ±|README|→ tofu init

Initializing the backend...

Initializing provider plugins...
- Finding ibm-cloud/ibm versions matching ">= 1.12.0"...
- Installing ibm-cloud/ibm v1.61.0...
- Installed ibm-cloud/ibm v1.61.0. Signature validation was skipped due to the registry not containing GPG keys for this provider

OpenTofu has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that OpenTofu can guarantee to make the same selections by default when
you run "tofu init" in the future.

OpenTofu has been successfully initialized!

You may now begin working with OpenTofu. Try running "tofu plan" to see
any changes that are required for your infrastructure. All OpenTofu commands
should now work.

If you ever set or change modules or backend configuration for OpenTofu,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
08:03:05 ubuntu@498b898d3351 01-ibmcloud-tfp ±|README ✗|→
```
