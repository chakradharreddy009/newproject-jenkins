<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>LUMINA — Premium E‑Commerce Experience</title>
    
    <!-- Google Fonts + Icons (modern, clean) -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-deep: #0b1120;
            --surface-card: #111827;
            --surface-lighter: #1f2937;
            --primary-glow: #38bdf8;
            --accent-neon: #06b6d4;
            --vibrant-purple: #c084fc;
            --text-light: #f1f5f9;
            --text-muted: #94a3b8;
            --border-dim: #1e293b;
            --success-emerald: #10b981;
            --warning-amber: #f59e0b;
            --gradient-hero: linear-gradient(135deg, rgba(15,25,45,0.92), rgba(5,15,30,0.96));
            --card-radius: 24px;
            --transition-smooth: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            background: var(--bg-deep);
            font-family: 'Inter', system-ui, -apple-system, 'Segoe UI', sans-serif;
            color: var(--text-light);
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        /* neon border effect */
        .glass-panel {
            background: rgba(17, 24, 39, 0.7);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(56, 189, 248, 0.2);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* === HEADER MODERN === */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(11, 18, 32, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-dim);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 0;
            gap: 24px;
            flex-wrap: wrap;
        }

        .brand {
            display: flex;
            align-items: baseline;
            gap: 6px;
            font-family: 'Space Grotesk', monospace;
            font-size: 26px;
            font-weight: 700;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #fff, var(--primary-glow));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        .brand span:first-child { background: linear-gradient(135deg, #e2e8f0, #94a3b8); -webkit-background-clip: text; background-clip: text; color: transparent; }
        .brand-dot { color: var(--accent-neon); font-size: 28px; }

        /* navigation */
        .nav-links {
            display: flex;
            gap: 28px;
            list-style: none;
        }
        .nav-links a {
            font-weight: 500;
            font-size: 0.95rem;
            transition: var(--transition-smooth);
            letter-spacing: -0.2px;
            display: flex;
            align-items: center;
            gap: 8px;
            color: var(--text-muted);
        }
        .nav-links a:hover { color: var(--primary-glow); transform: translateY(-1px); }

        /* modern search */
        .search-wrapper {
            display: flex;
            align-items: center;
            background: var(--surface-lighter);
            border-radius: 60px;
            padding: 6px 6px 6px 18px;
            border: 1px solid var(--border-dim);
            transition: all 0.2s;
        }
        .search-wrapper:focus-within { border-color: var(--accent-neon); box-shadow: 0 0 12px rgba(6,182,212,0.2);}
        .search-wrapper input {
            background: transparent;
            border: none;
            outline: none;
            color: var(--text-light);
            font-size: 0.9rem;
            width: 200px;
        }
        .search-wrapper button {
            background: var(--primary-glow);
            border: none;
            border-radius: 40px;
            padding: 8px 18px;
            cursor: pointer;
            color: #0a0f1c;
            font-weight: 600;
            transition: 0.2s;
        }
        .search-wrapper button:hover { background: #2dd4bf; transform: scale(0.96);}

        .header-actions {
            display: flex;
            gap: 18px;
            align-items: center;
        }
        .cart-icon {
            position: relative;
            font-size: 1.5rem;
            cursor: pointer;
            transition: 0.2s;
        }
        .cart-count {
            position: absolute;
            top: -8px;
            right: -12px;
            background: var(--accent-neon);
            font-size: 0.7rem;
            font-weight: bold;
            width: 20px;
            height: 20px;
            border-radius: 40px;
            display: grid;
            place-items: center;
            color: #0a0f1c;
        }

        /* hero section (glassmorph) */
        .hero-modern {
            background: var(--gradient-hero), url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
            margin: 20px 20px 0 20px;
            border-radius: 48px;
            padding: 80px 24px;
            text-align: center;
            backdrop-filter: brightness(0.9);
        }
        .hero-modern h1 {
            font-size: 3.5rem;
            font-weight: 800;
            font-family: 'Space Grotesk', sans-serif;
            background: linear-gradient(to right, #ffffff, #bae6fd);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .btn-group {
            margin-top: 32px;
            display: flex;
            gap: 18px;
            justify-content: center;
        }
        .btn-primary-glow {
            background: linear-gradient(105deg, var(--primary-glow), var(--accent-neon));
            border: none;
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 700;
            color: #0b1120;
            transition: 0.2s;
            cursor: pointer;
        }
        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(255,255,255,0.35);
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 500;
            backdrop-filter: blur(4px);
            cursor: pointer;
        }

        /* section titles */
        .section-head {
            text-align: center;
            margin: 56px 0 32px;
        }
        .section-head h2 {
            font-size: 2.2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #f0f9ff, #7dd3fc);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        /* categories grid (modern) */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin-bottom: 20px;
        }
        .cat-modern {
            background: var(--surface-card);
            backdrop-filter: blur(4px);
            border-radius: 28px;
            padding: 28px 12px;
            text-align: center;
            transition: var(--transition-smooth);
            border: 1px solid var(--border-dim);
            cursor: pointer;
        }
        .cat-modern:hover { transform: translateY(-8px); border-color: var(--primary-glow); background: #1e293b; }
        .cat-icon { font-size: 2.5rem; color: var(--accent-neon); margin-bottom: 12px; }

        /* products grid modern card */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: var(--surface-card);
            border-radius: var(--card-radius);
            overflow: hidden;
            transition: all 0.3s ease;
            border: 1px solid var(--border-dim);
            backdrop-filter: blur(2px);
        }
        .product-card:hover { transform: translateY(-10px); border-color: var(--primary-glow); box-shadow: 0 20px 35px -12px rgba(0,0,0,0.5);}
        .product-img {
            height: 220px;
            width: 100%;
            object-fit: cover;
            transition: 0.5s;
        }
        .product-body {
            padding: 20px;
        }
        .price-tag { font-size: 1.5rem; font-weight: 700; color: var(--primary-glow); }
        .old-price { text-decoration: line-through; font-size: 0.85rem; color: var(--text-muted); margin-left: 8px; }
        .rating i { color: #facc15; margin-right: 2px; font-size: 0.8rem;}
        .add-to-cart {
            background: linear-gradient(90deg, #1e293b, #0f172a);
            border: 1px solid var(--primary-glow);
            border-radius: 40px;
            padding: 10px;
            font-weight: 600;
            transition: 0.2s;
            cursor: pointer;
            width: 100%;
            color: var(--text-light);
        }
        .add-to-cart:hover { background: var(--primary-glow); color: #0a0f1c; border: none; }

        /* flash sale section premium */
        .flash-sale {
            background: linear-gradient(145deg, #111827, #0f1722);
            border-radius: 40px;
            display: flex;
            flex-wrap: wrap;
            gap: 28px;
            padding: 0;
            overflow: hidden;
            margin: 40px 0;
            border: 1px solid rgba(6,182,212,0.3);
        }
        .flash-img {
            flex: 1.2;
            min-height: 320px;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80') center/cover no-repeat;
        }
        .flash-content {
            flex: 1;
            padding: 40px 32px;
        }
        .timer-group {
            display: flex;
            gap: 20px;
            margin: 24px 0;
        }
        .time-card {
            background: #020617;
            border-radius: 24px;
            padding: 12px 16px;
            text-align: center;
            min-width: 70px;
            border: 1px solid #2dd4bf50;
        }

        /* testimonials */
        .testi-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding-bottom: 16px;
        }
        .testi-card {
            min-width: 320px;
            background: var(--surface-card);
            border-radius: 32px;
            padding: 24px;
            border: 1px solid var(--border-dim);
        }

        /* newsletter (glass) */
        .newsletter-glass {
            background: radial-gradient(circle at 10% 30%, rgba(6,182,212,0.1), rgba(15,23,42,0.9));
            border-radius: 56px;
            padding: 56px 32px;
            text-align: center;
            border: 1px solid rgba(56,189,248,0.3);
        }
        .newsletter-glass input {
            background: #1e293b;
            border: none;
            padding: 14px 24px;
            border-radius: 80px;
            width: 280px;
            color: white;
        }

        footer {
            margin-top: 70px;
            padding: 48px 0;
            border-top: 1px solid var(--border-dim);
            text-align: center;
        }
        .mobile-menu-btn { display: none; background: transparent; border: none; color: white; font-size: 1.6rem; cursor: pointer; }

        @media (max-width: 860px) {
            .nav-links { display: none; }
            .mobile-menu-btn { display: block; }
            .container { padding: 0 22px; }
            .hero-modern h1 { font-size: 2.4rem; }
            .search-wrapper input { width: 120px; }
        }
        @media (max-width: 640px) {
            .products-grid { grid-template-columns: 1fr; }
            .categories-grid { grid-template-columns: repeat(2,1fr); }
            .timer-group { gap: 8px; }
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-menu-btn" id="mobileMenuToggle"><i class="fas fa-bars"></i></button>
            <div class="brand">
                <span>LUMINA</span><span class="brand-dot">✦</span><span style="color:white;">STUDIO</span>
            </div>
        </div>
        <ul class="nav-links" id="desktopNav">
            <li><a href="#"><i class="fas fa-compass"></i> Discover</a></li>
            <li><a href="#" id="openCatTrigger"><i class="fas fa-th-large"></i> Categories</a></li>
            <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
            <li><a href="#"><i class="fas fa-crown"></i> Premium</a></li>
        </ul>
        <div style="display: flex; gap: 16px; align-items: center;">
            <div class="search-wrapper">
                <input type="text" id="globalSearch" placeholder="Search products...">
                <button id="searchExecBtn"><i class="fas fa-arrow-right"></i></button>
            </div>
            <div class="header-actions">
                <i class="far fa-heart" style="font-size: 1.3rem; cursor: pointer;"></i>
                <div class="cart-icon" id="cartIcon">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="cart-count" id="cartCounter">0</span>
                </div>
            </div>
        </div>
    </div>
    <!-- mobile menu panel -->
    <div id="mobileNavPanel" style="display: none; background: #0f172a; padding: 18px 24px; border-top: 1px solid #1e293b;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 16px;">
            <li><a href="#" style="color:white;">✨ Home</a></li>
            <li><a href="#" style="color:white;">🔥 Trending</a></li>
            <li><a href="#deals" style="color:white;">⚡ Deals</a></li>
            <li><a href="#" style="color:white;">📦 About</a></li>
        </ul>
    </div>
</header>

<main>
    <div class="container">
        <!-- Hero -->
        <div class="hero-modern">
            <h1>Beyond the ordinary.<br>Digital luxury edit</h1>
            <p style="max-width: 680px; margin: 20px auto; opacity: 0.8;">Discover curated tech, fashion & accessories with interstellar aesthetics. Free world‑wide shipping.</p>
            <div class="btn-group">
                <button class="btn-primary-glow" id="heroShopBtn">Shop Collection →</button>
                <button class="btn-outline-light" id="heroDealsBtn">Explore Drops</button>
            </div>
        </div>

        <!-- Categories Section dynamic -->
        <div class="section-head" id="catSection">
            <h2><i class="fas fa-shapes"></i> Curated Worlds</h2>
            <p style="color: var(--text-muted);">tap any category to discover gems</p>
        </div>
        <div class="categories-grid" id="categoriesContainer"></div>

        <!-- Products Grid -->
        <div class="section-head">
            <h2><i class="fas fa-sparkle"></i> Iconic Picks</h2>
            <p style="color: var(--text-muted);">limited drops — trending now</p>
        </div>
        <div class="products-grid" id="productsContainer"></div>

        <!-- Deal zone -->
        <div id="deals"></div>
        <div class="flash-sale">
            <div class="flash-img"></div>
            <div class="flash-content">
                <span style="background:#be123c; padding:4px 12px; border-radius:40px; font-size:0.8rem;">⚡ FLASH INTENSITY</span>
                <h2 style="font-size: 1.9rem; margin: 16px 0;">MacBook Air M3</h2>
                <p>From productivity to creation — next‑gen performance. Limited units.</p>
                <div class="timer-group">
                    <div class="time-card"><span id="dealDays" style="font-size:1.9rem; font-weight:700;">0</span><br>Days</div>
                    <div class="time-card"><span id="dealHours" style="font-size:1.9rem;">00</span><br>Hrs</div>
                    <div class="time-card"><span id="dealMinutes" style="font-size:1.9rem;">00</span><br>Min</div>
                    <div class="time-card"><span id="dealSeconds" style="font-size:1.9rem;">00</span><br>Sec</div>
                </div>
                <div style="margin: 20px 0;"><span class="price-tag" style="font-size:2rem;">$999</span> <span style="text-decoration:line-through; color:gray;">$1,399</span> <span style="background:#c2410c; padding:4px 12px; border-radius:40px;">-28%</span></div>
                <button class="btn-primary-glow" id="dealAddBtn"><i class="fas fa-bolt"></i> Add to Cart – Deal</button>
            </div>
        </div>

        <!-- Testimonials -->
        <div class="section-head"><h2><i class="fas fa-comment-dots"></i> Voices of LUMINA</h2></div>
        <div class="testi-scroll" id="testimonialsList"></div>

        <!-- Newsletter Futuristic -->
        <div class="newsletter-glass">
            <h3 style="font-size: 1.8rem;">Join the <span style="color: #38bdf8;">neural</span> edit</h3>
            <p style="margin-bottom: 24px;">Exclusive access + early bird discount</p>
            <form id="newsletterModern" style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap;">
                <input type="email" id="newsEmail" placeholder="your@email.com" required>
                <button type="submit" class="btn-primary-glow" style="background: #0f172a; border: 1px solid #38bdf8;">Subscribe ✦</button>
            </form>
            <div id="newsMessage" style="margin-top: 16px;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container">
        <p style="color: #5b6e8c;">© 2025 LUMINA STUDIO — immersive commerce experience</p>
        <div style="margin-top: 16px; display: flex; gap: 24px; justify-content: center;">
            <i class="fab fa-twitter"></i> <i class="fab fa-instagram"></i> <i class="fab fa-discord"></i>
        </div>
    </div>
</footer>

<script>
    // ---- DATA (enhanced) ----
    const CATEGORIES_DATA = [
        { id: "tech", name: "CyberTech", icon: "fa-microchip" },
        { id: "audio", name: "AudioPhile", icon: "fa-headphones" },
        { id: "wear", name: "Streetwear", icon: "fa-vest" },
        { id: "foot", name: "NeoKicks", icon: "fa-shoe-prints" },
        { id: "access", name: "ChronoGear", icon: "fa-clock" },
        { id: "cam", name: "Vision Pro", icon: "fa-camera" }
    ];

    const PRODUCTS_LIST = [
        { id: 101, title: "Orbit X Phone", price: 899, oldPrice: 1099, rating: 4.8, img: "https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=600&q=80", category: "tech", reviews: 245 },
        { id: 102, title: "Aether Pods Pro", price: 199, rating: 4.9, img: "https://images.unsplash.com/photo-1606220588913-b3aac2b90f42?auto=format&fit=crop&w=600&q=80", category: "audio", reviews: 832, badge: "Bestseller" },
        { id: 103, title: "Hydrogen Jacket", price: 289, oldPrice: 420, rating: 4.7, img: "https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80", category: "wear", reviews: 117 },
        { id: 104, title: "Quantum Sneakers", price: 159, rating: 4.6, img: "https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=600&q=80", category: "foot", reviews: 402 },
        { id: 105, title: "Crown Diver Watch", price: 345, oldPrice: 490, rating: 4.9, img: "https://images.unsplash.com/photo-1523170335258-f5ed11844a49?auto=format&fit=crop&w=600&q=80", category: "access", reviews: 98 },
        { id: 106, title: "Nebula Camera Kit", price: 1249, rating: 5.0, img: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80", category: "cam", reviews: 64 }
    ];

    let cartItemsCount = 0;
    const cartCountSpan = document.getElementById('cartCounter');
    const productsContainer = document.getElementById('productsContainer');
    const categoriesContainer = document.getElementById('categoriesContainer');

    function updateCartUI() { cartCountSpan.innerText = cartItemsCount; }

    function addToCartById(pid) {
        cartItemsCount++;
        updateCartUI();
        // subtle animation effect
        const btn = document.querySelector(`.add-btn-${pid}`);
        if(btn) {
            const orig = btn.innerHTML;
            btn.innerHTML = '✓ Added';
            setTimeout(() => btn.innerHTML = orig, 1000);
        }
        // optional alert less intrusive
    }

    function renderProducts(filterCat = null) {
        let filtered = [...PRODUCTS_LIST];
        if(filterCat && filterCat !== 'all') {
            filtered = PRODUCTS_LIST.filter(p => p.category === filterCat);
        }
        productsContainer.innerHTML = '';
        filtered.forEach(p => {
            const card = document.createElement('div');
            card.className = 'product-card';
            card.innerHTML = `
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-body">
                    <h3 style="font-size: 1.2rem;">${p.title}</h3>
                    <div class="rating">${'<i class="fas fa-star"></i>'.repeat(Math.floor(p.rating))} ${p.rating}</div>
                    <div style="margin: 12px 0;"><span class="price-tag">$${p.price.toLocaleString()}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                    <button class="add-to-cart add-btn-${p.id}" data-id="${p.id}"><i class="fas fa-shopping-cart"></i> Add to bag</button>
                </div>
            `;
            const btn = card.querySelector(`.add-btn-${p.id}`);
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                addToCartById(p.id);
            });
            productsContainer.appendChild(card);
        });
    }

    function renderCategories() {
        categoriesContainer.innerHTML = '';
        CATEGORIES_DATA.forEach(cat => {
            const div = document.createElement('div');
            div.className = 'cat-modern';
            div.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><p style="font-size:12px;">Explore</p>`;
            div.addEventListener('click', () => {
                const filteredProd = PRODUCTS_LIST.filter(p => p.category === cat.id);
                if(filteredProd.length) renderProducts(cat.id);
                else renderProducts('all');
                window.scrollTo({ top: productsContainer.offsetTop - 80, behavior: 'smooth'});
            });
            categoriesContainer.appendChild(div);
        });
    }

    // testimonial data render
    const testimonials = [
        { name: "Elena V.", text: "Mind-blowing quality and futuristic delivery. The sneakers feel like clouds.", rating: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
        { name: "Marcus T.", text: "LUMINA's curation is unmatched — the packaging alone deserves 10 stars.", rating: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" }
    ];
    function renderTestimonials() {
        const container = document.getElementById('testimonialsList');
        container.innerHTML = testimonials.map(t => `
            <div class="testi-card">
                <div style="color:#facc15;">${'★'.repeat(t.rating)}</div>
                <p style="margin: 12px 0;">"${t.text}"</p>
                <div style="display:flex; gap:12px; align-items:center;"><i class="fas fa-user-circle fa-2x"></i><strong>${t.name}</strong></div>
            </div>
        `).join('');
    }

    // Countdown logic (23h left approx)
    function initDealTimer() {
        let targetTime = new Date().getTime() + (23 * 3600 + 59 * 60) * 1000;
        function updateTimer() {
            let diff = targetTime - Date.now();
            if(diff <= 0) { document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00'; document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00'; return; }
            let days = Math.floor(diff / (86400000));
            let hours = Math.floor((diff % 86400000) / 3600000);
            let mins = Math.floor((diff % 3600000) / 60000);
            let secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = hours < 10 ? '0'+hours : hours;
            document.getElementById('dealMinutes').innerText = mins < 10 ? '0'+mins : mins;
            document.getElementById('dealSeconds').innerText = secs < 10 ? '0'+secs : secs;
        }
        updateTimer(); setInterval(updateTimer, 1000);
    }

    // Search & global filtering 
    const searchInput = document.getElementById('globalSearch');
    const searchBtn = document.getElementById('searchExecBtn');
    function performSearch() {
        let query = searchInput.value.trim().toLowerCase();
        if(query === "") { renderProducts(); return; }
        let filtered = PRODUCTS_LIST.filter(p => p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query));
        if(filtered.length) renderProductsWithCustom(filtered);
        else productsContainer.innerHTML = `<div style="grid-column:1/-1; text-align:center;">No results for “${query}” 😞</div>`;
    }
    function renderProductsWithCustom(productsArray) {
        productsContainer.innerHTML = '';
        productsArray.forEach(p => {
            const card = document.createElement('div'); card.className = 'product-card';
            card.innerHTML = `<img class="product-img" src="${p.img}"><div class="product-body"><h3>${p.title}</h3><div class="rating">⭐ ${p.rating}</div><div><span class="price-tag">$${p.price}</span></div><button class="add-to-cart add-btn-${p.id}" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button></div>`;
            card.querySelector(`.add-btn-${p.id}`).addEventListener('click', () => addToCartById(p.id));
            productsContainer.appendChild(card);
        });
    }
    searchBtn.addEventListener('click', performSearch);
    searchInput.addEventListener('keypress', (e) => { if(e.key === 'Enter') performSearch(); });

    // Deal Add button
    document.getElementById('dealAddBtn').addEventListener('click', () => { cartItemsCount++; updateCartUI(); alert("🔥 MacBook M3 added to cart! (Special deal)"); });
    document.getElementById('heroShopBtn').addEventListener('click', () => { window.scrollTo({ top: productsContainer.offsetTop - 40, behavior: 'smooth' }); });
    document.getElementById('heroDealsBtn').addEventListener('click', () => { document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }); });

    // Newsletter
    const newsForm = document.getElementById('newsletterModern');
    const newsMsgDiv = document.getElementById('newsMessage');
    newsForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value;
        if(email && email.includes('@')) {
            newsMsgDiv.innerHTML = '<span style="color:#2dd4bf;">✓ Subscribed — welcome to the future.</span>';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => newsMsgDiv.innerHTML = '', 3000);
        } else { newsMsgDiv.innerHTML = '<span style="color:#f97316;">Enter valid cosmic email</span>'; }
    });

    // Mobile Menu toggle
    const mobileToggleBtn = document.getElementById('mobileMenuToggle');
    const mobilePanel = document.getElementById('mobileNavPanel');
    mobileToggleBtn.addEventListener('click', () => {
        if(mobilePanel.style.display === 'none' || mobilePanel.style.display === '') mobilePanel.style.display = 'block';
        else mobilePanel.style.display = 'none';
    });
    // desktop category trigger smooth advice
    document.getElementById('openCatTrigger')?.addEventListener('click', (e) => {
        e.preventDefault();
        document.getElementById('catSection').scrollIntoView({ behavior: 'smooth' });
    });

    // init all
    function init() {
        renderCategories();
        renderProducts();
        renderTestimonials();
        initDealTimer();
        updateCartUI();
    }
    init();
</script>
</body>
</html>
