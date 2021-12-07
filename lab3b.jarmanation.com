server {
  listen 80;
  server_name lab3b.jarmanation.com;
  root /var/www/lab3b.jarmanation.com;
  index index.html;
  default_type "text/html";
  location / {
    try_files $uri $uri/ =404;
  }
}
