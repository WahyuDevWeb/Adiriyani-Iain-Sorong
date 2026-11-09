WAHYU RAMADHAN — VIP PORTFOLIO
Versi 2.1.0 — siap dijalankan tanpa dependency tambahan

MENJALANKAN WEBSITE

CARA 1 — PALING MUDAH (TANPA INSTALL APA PUN)
- Ekstrak ZIP.
- Buka folder public.
- Buka index.html menggunakan browser.
- Cara ini cocok untuk melihat website secara langsung dan untuk hosting statis.

CARA 2 — SERVER LOKAL DI WINDOWS
- Pastikan Node.js 18 atau lebih baru tersedia.
- Klik dua kali start.bat.
- Website berjalan di http://localhost:3162.
- Tidak perlu menjalankan npm install. Tidak ada package pihak ketiga.

CARA 3 — SERVER LOKAL DI LINUX / macOS
- Pastikan Node.js 18 atau lebih baru tersedia.
- Jalankan: ./start.sh
- Atau jalankan: node server.js
- Buka http://localhost:3162.
- Tidak perlu npm install.

HOSTING STATIS / DEPLOY
Website ini berupa HTML, CSS, JavaScript, dan aset statis. Upload ISI folder public ke web root hosting (misalnya public_html, htdocs, www, atau wwwroot). Pastikan index.html berada langsung di web root.

Bisa dipakai pada hosting statis seperti cPanel/shared hosting, GitHub Pages, Netlify, Cloudflare Pages, dan layanan static hosting sejenis. Tidak perlu Node.js, npm, database, proses build, atau instalasi dependency untuk hosting statis.

HOSTING NODE.JS
- Gunakan Node.js 18+.
- Jalankan perintah start dari package.json (npm start) atau node server.js.
- Server menggunakan modul bawaan Node.js saja; tidak perlu npm install.
- Port mengikuti environment PORT jika disediakan hosting, atau 3162 secara default.

STRUKTUR
- public/index.html : halaman website
- public/style.css  : desain, animasi, dan tampilan responsif
- public/script.js  : JavaScript website
- public/assets/logos/ : logo sosial dan ID card
- public/assets/profile/ : gambar profil
- server.js : server statis opsional tanpa dependency eksternal
- start.bat : launcher Windows
- start.sh : launcher Linux/macOS
- package.json : metadata dan perintah start

CATATAN
- Untuk menjalankan server lokal, perangkat tetap membutuhkan Node.js 18+; file proyek tidak dapat memasang runtime sistem secara aman/otomatis di semua perangkat. Namun, tidak ada package npm yang perlu di-install.
- Untuk penggunaan di Android, cara paling sederhana adalah upload folder public ke hosting statis atau buka public/index.html menggunakan browser/file manager yang mendukung file HTML.
- Pertahankan struktur folder public/assets agar semua gambar tampil.
