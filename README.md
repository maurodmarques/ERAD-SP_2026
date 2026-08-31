# Workshop

ECL course material for community workshops. The training cluster utilized during the workshop is: [Training Cluster](https://eclwatch.br-training-prod.azure.lnrsg.io:18010/) and [ESP Server](https://eclqueries.br-training-prod.azure.lnrsg.io:18002/).
After completing this course, you should use: *localhost* or [PlayGround Cluster](https://play.hpccsystems.com:18010/) and [PlayGround ESP Server](https://play.hpccsystems.com:18002/).

**Note**: The '*persons*' and '*property.csv*' datasets are already sprayed and available in the training cluster utilized during the workshop.


# HPCC Systems platform

Environment for the HPCC-Systems big data platform.  This demo uses cloud developer environments (originally GitPod, currently migrated to [ONA](https://gitpod.io), now also [GitHub Codespaces](https://github.com/features/codespaces)) to host a single node instance of the HPCC-System platform and VS Code (web based) with the ECL Extension pre-installed.

## Launch in GitHub Codespaces

Click the badge below to launch a Codespace using the new dev container configuration.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/mauromarx/ERAD-SP_2026)

The Codespaces environment will:

* Build a custom container (see `.devcontainer/Dockerfile`) installing HPCC Systems platform 9.14.22-1 version
* Auto-start the HPCC services (`postStartCommand` runs `start-hpcc.sh` and `install-bundles.sh`)
* Forward ports `8010` or `18010` (ECL Watch) and `8002` or `18002` (ESP)
* Install the VS Code extensions: `hpcc-systems.ecl` and `gordonsmith.observable-js`

### Codespaces Notes

* If the HPCC services fail to start (rare), run: `start-hpcc.sh` in the integrated terminal.
* To rebuild the container after changing devcontainer files: Command Palette → “Codespaces: Rebuild Container”.
* The legacy Gitpod config (`.gitpod.yml`) remains for backward compatibility; future improvements should target the dev container.

---

## Launch in ONA

### Latest Version from "main" branch:

* [main](https://gitpod.io/#https://github.com/mauromarx/Template_2026)

---

## Quick Start

![Welcome Image](./.resources/welcome.jpeg "Welcome")

* Expand the "Code/ECL" folder and click on "BWR_Tests.ecl"

![BWR_Tests Image](./.resources/BWR_Tests.jpeg "BWR_Tests.ecl")

1.  Verify the environment and target
2.  Click on the check, and then submit button

![Submit Image](./.resources/submit.jpeg "Submitted BWR_Tests.ecl")

* Open ECL Watch by clicking on the globe icon

![Open ECL Watch](./.resources/eclwatch_globe.jpeg "Open ECL Watch")

![ECL Watch](./.resources/eclwatch.jpeg "ECL Watch")

