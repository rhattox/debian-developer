# debian-developer
Debian Developer Setup


Local binary path: `$HOME/.local/bin`
General profile export: `/etc/profile.d/`
Sudoes Folder: `/etc/sudoers.d/dev`


# ASDF Plugins List

Organized list of useful ASDF plugins for Kubernetes, DevOps, cloud development, programming languages, and general CLI utilities.

---

## 🗂 Kubernetes & Cloud-Native Tools
Plugins related to Kubernetes, Helm, and container runtimes.

| Plugin       | URL | Description |
|--------------|-----|-------------|
| **kubectl** | [link](https://github.com/asdf-community/asdf-kubectl.git) | Kubernetes CLI |
| **kubectx** | [link](https://gitlab.com/wt0f/asdf-kubectx.git) | Switch between clusters/namespaces |
| **k9s** | [link](https://github.com/looztra/asdf-k9s.git) | TUI for managing Kubernetes |
| **kubecolor** | [link](https://github.com/dex4er/asdf-kubecolor.git) | Colorized kubectl output |
| **krew** | [link](https://github.com/bjw-s/asdf-krew.git) | Plugin manager for kubectl |
| **helm** | [link](https://github.com/Antiarchitect/asdf-helm.git) | Kubernetes package manager |
| **helm-cr** | [link](https://github.com/Antiarchitect/asdf-helm-cr.git) | Helm Chart Releaser |
| **helm-ct** | [link](https://github.com/tablexi/asdf-helm-ct.git) | Helm Chart Testing |
| **helm-diff** | [link](https://github.com/dex4er/asdf-helm-diff.git) | Helm Diff plugin |
| **helm-docs** | [link](https://github.com/sudermanjr/asdf-helm-docs.git) | Generate Helm chart documentation |
| **argo** | [link](https://github.com/sudermanjr/asdf-argo.git) | Argo Workflows CLI |
| **argo-rollouts** | [link](https://github.com/abatilo/asdf-argo-rollouts.git) | Argo Rollouts controller |
| **argocd** | [link](https://github.com/beardix/asdf-argocd.git) | ArgoCD CLI |
| **argocd-image-updater** | [link](https://github.com/thatmlopsguy/asdf-argocd-image-updater.git) | Update container images in ArgoCD |
| **k3d** | [link](https://github.com/spencergilbert/asdf-k3d.git) | Run K3s in Docker |
| **k3kcli** | [link](https://github.com/xanmanning/asdf-k3kcli.git) | CLI for K3k clusters |
| **k3s** | [link](https://github.com/dmpe/asdf-k3s.git) | Lightweight Kubernetes distribution |
| **crictl** | [link](https://github.com/FairwindsOps/asdf-crictl.git) | CRI-compatible container runtime CLI |
| **nerdctl** | [link](https://github.com/dmpe/asdf-nerdctl) | Docker-compatible CLI for containerd |
| **stern** | [link](https://github.com/looztra/asdf-stern.git) | Tail multiple Kubernetes pod logs |

---

## ⚙️ GitHub Actions / CI/CD Tools
For managing GitHub Actions locally or working with pipelines.

| Plugin | URL | Description |
|--------|-----|-------------|
| **act** | [link](https://github.com/gr1m0h/asdf-act.git) | Run GitHub Actions locally |
| **ghorg** | [link](https://github.com/gbloquel/asdf-ghorg.git) | Clone all repos from a GitHub organization |

---

## ☁️ Cloud & DevOps
AWS CLI and other cloud automation utilities.

| Plugin | URL | Description |
|--------|-----|-------------|
| **awscli** | [link](https://github.com/MetricMike/asdf-awscli.git) | AWS CLI |
| **awscli-local** | [link](https://github.com/paulo-ferraz-oliveira/asdf-awscli-local) | AWS CLI Local (simulate AWS services) |
| **okta-aws-cli** | [link](https://github.com/bennythejudge/asdf-plugin-okta-aws-cli.git) | AWS CLI with Okta SSO |

---

## 📦 Build & Release Management
Tools for packaging, releasing, and migrations.

| Plugin | URL | Description |
|--------|-----|-------------|
| **flyway** | [link](https://github.com/junminahn/asdf-flyway.git) | Database migrations |
| **liquibase** | [link](https://github.com/saliougaye/asdf-liquibase.git) | Alternative DB migration tool |
| **make** | [link](https://github.com/yacchi/asdf-make.git) | Make build tool |
| **maven** | [link](https://github.com/halcyon/asdf-maven.git) | Maven build tool (Java) |
| **spring-boot** | [link](https://github.com/joschi/asdf-spring-boot.git) | Spring Boot CLI |
| **changie** | [link](https://github.com/pdemagny/asdf-changie) | Manage changelogs |

---

## 🧪 Security & Scanning
For auditing and security checks.

| Plugin | URL | Description |
|--------|-----|-------------|
| **dockle** | [link](https://github.com/mathew-fleisch/asdf-dockle.git) | Container image vulnerability scanner |
| **snyk** | [link](https://github.com/nirfuchs/asdf-snyk.git) | Dependency security scanning |
| **certstrap** | [link](https://github.com/carnei-ro/asdf-certstrap.git) | Simple CA & certificate creation |
| **mkcert** | [link](https://github.com/salasrod/asdf-mkcert.git) | Local trusted certificates |

---

## 📊 Observability & Monitoring
For viewing logs, metrics, and system info.

| Plugin | URL | Description |
|--------|-----|-------------|
| **duf** | [link](https://github.com/NeoHsu/asdf-duf.git) | Disk usage/free space viewer |
| **dust** | [link](https://github.com/looztra/asdf-dust.git) | Disk usage analysis (better `du`) |

---

## 🛠 General Developer Utilities
Useful CLI utilities for everyday development.

| Plugin | URL | Description |
|--------|-----|-------------|
| **fzf** | [link](https://github.com/kompiro/asdf-fzf.git) | Fuzzy finder |
| **bat** | [link](https://github.com/pauloedurezende/asdf-bat.git) | `cat` with syntax highlighting |
| **fd** | [link](https://gitlab.com/wt0f/asdf-fd.git) | Better `find` |
| **ripgrep** | [link](https://gitlab.com/wt0f/asdf-ripgrep.git) | Fast search tool |
| **eza** | [link](https://github.com/lwiechec/asdf-eza.git) | Improved `ls` command |
| **starship** | [link](https://github.com/gr1m0h/asdf-starship.git) | Minimal and fast shell prompt |
| **envsubst** | [link](https://github.com/dex4er/asdf-envsubst.git) | Substitute env vars in files |
| **fx** | [link](https://gitlab.com/wt0f/asdf-fx.git) | JSON viewer and processor |
| **yq** | [link](https://github.com/sudermanjr/asdf-yq.git) | YAML processor (like jq for YAML) |
| **jq** | [link](https://github.com/lsanwick/asdf-jq.git) | JSON processor |
| **websocat** | [link](https://github.com/bdellegrazie/asdf-websocat.git) | WebSocket client CLI |
| **has** | [link](https://github.com/sylvainmetayer/asdf-has) | Check if tools are installed |

---

## 🐍 Programming Languages & Runtimes
For language version management.

| Plugin | URL | Description |
|--------|-----|-------------|
| **nodejs** | [link](https://github.com/asdf-vm/asdf-nodejs.git) | Node.js runtime |
| **python** | [link](https://github.com/danhper/asdf-python.git) | Python runtime |
| **java** | [link](https://github.com/halcyon/asdf-java.git) | Java runtime |

---

## 🧙 Miscellaneous / Others
Miscellaneous or less commonly used tools.

| Plugin | URL | Description |
|--------|-----|-------------|
| **ollama** | [link](https://github.com/virtualstaticvoid/asdf-ollama.git) | Run local LLMs |
| **bfs** | [link](https://github.com/virtualroot/asdf-bfs.git) | Better `find` alternative |
| **fillin** | [link](https://github.com/ouest/asdf-fillin) | Interactive `.env` filling tool |
| **lq** | [link](https://github.com/jylenhof/asdf-lq.git) | Log query tool |

---

## 🔧 ASDF Tooling
Tools to manage ASDF itself.

| Plugin | URL | Description |
|--------|-----|-------------|
| **asdf-plugin-manager** | [link](https://github.com/asdf-community/asdf-plugin-manager) | Manage ASDF plugins easily |


```
argo                          https://github.com/sudermanjr/asdf-argo.git
argo-rollouts                 https://github.com/abatilo/asdf-argo-rollouts.git
argocd                        https://github.com/beardix/asdf-argocd.git
argocd-image-updater          https://github.com/thatmlopsguy/asdf-argocd-image-updater.git
awscli                        https://github.com/MetricMike/asdf-awscli.git
act                           https://github.com/gr1m0h/asdf-act.git
asdf-plugin-manager           https://github.com/asdf-community/asdf-plugin-manager
bfs                           https://github.com/virtualroot/asdf-bfs.git
alp                           https://github.com/asdf-community/asdf-alp.git
awscli-local                  https://github.com/paulo-ferraz-oliveira/asdf-awscli-local
bat                           https://github.com/pauloedurezende/asdf-bat.git
boundary                      https://github.com/asdf-community/asdf-hashicorp.git
certstrap                     https://github.com/carnei-ro/asdf-certstrap.git
changie                       https://github.com/pdemagny/asdf-changie
crictl                        https://github.com/FairwindsOps/asdf-crictl.git
dive                          https://github.com/looztra/asdf-dive.git
dockle                        https://github.com/mathew-fleisch/asdf-dockle.git
yq                            https://github.com/sudermanjr/asdf-yq.git
duf                           https://github.com/NeoHsu/asdf-duf.git 
dust                          https://github.com/looztra/asdf-dust.git
envsubst                      https://github.com/dex4er/asdf-envsubst.git
eza                           https://github.com/lwiechec/asdf-eza.git
fd                            https://gitlab.com/wt0f/asdf-fd.git
fillin                        https://github.com/ouest/asdf-fillin
flyway                        https://github.com/junminahn/asdf-flyway.git
fx                            https://gitlab.com/wt0f/asdf-fx.git
fzf                           https://github.com/kompiro/asdf-fzf.git
ghorg                         https://github.com/gbloquel/asdf-ghorg.git
git-chglog                    https://github.com/GoodwayGroup/asdf-git-chglog.git
git-cliff                     https://github.com/jylenhof/asdf-git-cliff.git
gitconfig                     https://github.com/0ghny/asdf-gitconfig.git
github-cli                    https://github.com/bartlomiejdanek/asdf-github-cli.git
has                           https://github.com/sylvainmetayer/asdf-has
helm                          https://github.com/Antiarchitect/asdf-helm.git
helm-cr                       https://github.com/Antiarchitect/asdf-helm-cr.git
helm-ct                       https://github.com/tablexi/asdf-helm-ct.git
helm-diff                     https://github.com/dex4er/asdf-helm-diff.git
helm-docs                     https://github.com/sudermanjr/asdf-helm-docs.git
istioctl                      https://github.com/virtualstaticvoid/asdf-istioctl.git
java                         *https://github.com/halcyon/asdf-java.git
jfrog-cli                     https://github.com/LozanoMatheus/asdf-jfrog-cli.git
jq                            https://github.com/lsanwick/asdf-jq.git
k9s                           https://github.com/looztra/asdf-k9s.git
kafka                         https://github.com/ueisele/asdf-kafka.git
kafkactl                      https://github.com/anweber/asdf-kafkactl.git
k3d                           https://github.com/spencergilbert/asdf-k3d.git
k3kcli                        https://github.com/xanmanning/asdf-k3kcli.git
k3s                           https://github.com/dmpe/asdf-k3s.git
krew                          https://github.com/bjw-s/asdf-krew.git
kubecolor                     https://github.com/dex4er/asdf-kubecolor.git
kubectl                       https://github.com/asdf-community/asdf-kubectl.git
kubectx                       https://gitlab.com/wt0f/asdf-kubectx.git
liquibase                     https://github.com/saliougaye/asdf-liquibase.git
lq                            https://github.com/jylenhof/asdf-lq.git
make                          https://github.com/yacchi/asdf-make.git
maven                        *https://github.com/halcyon/asdf-maven.git
mkcert                        https://github.com/salasrod/asdf-mkcert.git
mongosh                       https://github.com/itspngu/asdf-mongosh.git
nerdctl                       https://github.com/dmpe/asdf-nerdctl
nodejs                       *https://github.com/asdf-vm/asdf-nodejs.git
okta-aws-cli                  https://github.com/bennythejudge/asdf-plugin-okta-aws-cli.git
ollama                        https://github.com/virtualstaticvoid/asdf-ollama.git
python                       *https://github.com/danhper/asdf-python.git
ripgrep                       https://gitlab.com/wt0f/asdf-ripgrep.git
snyk                          https://github.com/nirfuchs/asdf-snyk.git
spring-boot                   https://github.com/joschi/asdf-spring-boot.git
starship                      https://github.com/gr1m0h/asdf-starship.git
stern                         https://github.com/looztra/asdf-stern.git
websocat                      https://github.com/bdellegrazie/asdf-websocat.git
localstack
```
