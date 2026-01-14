# Artikel Anguru

Website CMS untuk mengelola artikel dan biografi, dibangun dengan Laravel 11.

## 🚀 Fitur

### Public
- 📰 Daftar artikel dengan filter berdasarkan tahun dan bulan
- 🔍 Pencarian artikel
- 👤 Halaman biografi
- 📱 Responsive design

### Admin Panel
- ✍️ CRUD Artikel dengan CKEditor
- 🗑️ Soft delete & restore artikel
- 📁 Trash management (bulk restore & delete)
- 👤 Manajemen biografi
- 🔐 Authentication dengan Laravel Breeze

## 📋 Requirements

- PHP >= 8.2
- Composer
- Node.js & NPM
- MySQL

## ⚙️ Instalasi

### 1. Clone repository
```bash
git clone https://github.com/reyhanhmdani/artikel-anguru.git
cd artikel-anguru
```

### 2. Install dependencies
```bash
composer install
npm install
```

### 3. Setup environment
```bash
cp .env.example .env
php artisan key:generate
```

### 4. Konfigurasi database
Edit file `.env` dan sesuaikan konfigurasi database:
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nama_database
DB_USERNAME=username
DB_PASSWORD=password
```

### 5. Migrasi database
```bash
php artisan migrate
```

### 6. Storage link untuk gambar
```bash
php artisan storage:link
```

### 7. Build assets
```bash
npm run build
```

## 🏃 Menjalankan Aplikasi

### Development
```bash
# Jalankan semua (server, queue, logs, vite) sekaligus
composer dev

# Atau jalankan terpisah
php artisan serve
npm run dev
```

### Production
```bash
npm run build
```

## 📁 Struktur Folder Penting

```
app/
├── Http/Controllers/
│   ├── ArticleController.php    # CRUD artikel
│   ├── BiographyController.php  # Manajemen biografi
│   └── PublicController.php     # Halaman publik
├── Models/
│   ├── Article.php              # Model artikel
│   └── Biography.php            # Model biografi
resources/views/
├── admin/                       # Views admin panel
├── public/                      # Views halaman publik
└── layouts/                     # Layout templates
```

## 🛠️ Tech Stack

- **Backend**: Laravel 11
- **Frontend**: Blade, Tailwind CSS
- **Editor**: CKEditor 4
- **Database**: MySQL
- **Authentication**: Laravel Breeze
- **Testing**: Pest PHP

## 📝 Catatan Development

### Kolom Content Artikel
Jika mengalami error `Data too long for column 'content'`, jalankan SQL berikut di database:
```sql
ALTER TABLE articles MODIFY COLUMN content LONGTEXT;
```

## 📄 License

MIT License
