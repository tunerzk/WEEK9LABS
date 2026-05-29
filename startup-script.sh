 # Very simple startup script: install a web server and serve a basic page.
  metadata_startup_script = <<-EOF
    #!/bin/bash
    set -euo pipefail

    apt-get update -y
    apt-get install -y apache2

    echo "Hello from the MIG instance!" > /var/www/html/index.html

    systemctl enable apache2
    systemctl restart apache2
  EOF
}