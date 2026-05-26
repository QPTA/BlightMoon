<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<section class="page-hero">
    <div class="page-hero-bg" style="background-image:url('https://images.unsplash.com/photo-1534447677768-be436bb09401?w=1920&q=80');"></div>
    <div class="page-hero-overlay"></div>
    <div class="page-hero-content">
        <p class="page-hero-eyebrow">&#9670; Dispatches &#9670;</p>
        <h1 class="page-hero-title">News</h1>
        <p class="page-hero-subtitle">Updates from the development front. The work continues. So does the darkness.</p>
    </div>
</section>

<!-- FEATURED POST -->
<section class="section section-dark">
    <div class="container">
        <div class="section-header">
            <span class="section-eyebrow">Featured</span>
            <h2 class="section-title">Latest Dispatch</h2>
            <div class="section-divider"></div>
        </div>

        <div class="news-grid">
            <div class="news-card-featured">
                <img class="news-featured-img" src="https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=900&q=80" alt="Featured News" loading="lazy">
                <div style="padding:2.5rem; display:flex; flex-direction:column; justify-content:center; background:var(--dark-card);">
                    <span class="news-category">&#9670; MAJOR UPDATE</span>
                    <span class="news-date">November 14, 2024</span>
                    <h2 style="font-family:'Cinzel',serif; font-size:1.8rem; color:var(--cream); margin-bottom:1rem; line-height:1.3;">
                        Version 3.0: The Sunken City Expansion
                    </h2>
                    <p class="font-crimson" style="color:var(--mid-grey); font-size:1rem; line-height:1.7; margin-bottom:1.5rem;">
                        The largest content expansion in Veil of Perdition history arrives this month.
                        Two new dungeon regions, four new playable classes, fourteen new boss encounters,
                        and a complete overhaul of the hamlet's upgrade tree. After 18 months of development,
                        the darkness gets deeper.
                    </p>
                    <div style="display:flex; gap:1rem;">
                        <a href="#" class="btn btn-primary" style="font-size:0.68rem;">Read Full Post</a>
                        <a href="#" class="btn btn-secondary" style="font-size:0.68rem;">Patch Notes</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- NEWS GRID -->
<section class="section section-surface">
    <div class="container">
        <div class="section-header">
            <span class="section-eyebrow">All Dispatches</span>
            <h2 class="section-title">Recent News</h2>
            <div class="section-divider"></div>
        </div>

        <!-- Filter Tabs -->
        <div style="display:flex; gap:0.5rem; margin-bottom:2.5rem; flex-wrap:wrap;">
            <a href="#" class="btn btn-primary" style="font-size:0.62rem; padding:0.4rem 1rem;">All</a>
            <a href="#" class="btn btn-secondary" style="font-size:0.62rem; padding:0.4rem 1rem;">Updates</a>
            <a href="#" class="btn btn-secondary" style="font-size:0.62rem; padding:0.4rem 1rem;">Dev Blog</a>
            <a href="#" class="btn btn-secondary" style="font-size:0.62rem; padding:0.4rem 1rem;">Community</a>
            <a href="#" class="btn btn-secondary" style="font-size:0.62rem; padding:0.4rem 1rem;">DLC</a>
        </div>

        <div class="grid-3">

            <div class="card">
                <img class="card-img" src="https://images.unsplash.com/photo-1476231682828-37e571bc172f?w=600&q=80" alt="Balance" loading="lazy">
                <div class="card-body">
                    <span class="news-category">Balance Patch</span>
                    <span class="news-date">Oct 28, 2024</span>
                    <h3 class="card-title mt-1">2.9.3 — The Balancing of Shadows</h3>
                    <p class="card-text">Crusader stress healing buffed. Hag fight reworked to remove the one-shot mechanic that was causing community friction. Full notes inside.</p>
                </div>
                <div class="card-footer">
                    <span></span>
                    <a href="#" class="text-crimson font-cinzel" style="font-size:0.62rem;">Read &#8594;</a>
                </div>
            </div>

            <div class="card">
                <img class="card-img" src="https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=600&q=80" alt="Dev Blog" loading="lazy">
                <div class="card-body">
                    <span class="news-category">Dev Blog</span>
                    <span class="news-date">Oct 15, 2024</span>
                    <h3 class="card-title mt-1">Designing the Darkest Dungeon: Boss Philosophy</h3>
                    <p class="card-text">A deep dive into how we approach boss encounters—the tension between difficulty, fairness, and the feeling of earned despair that defines the game.</p>
                </div>
                <div class="card-footer">
                    <span></span>
                    <a href="#" class="text-crimson font-cinzel" style="font-size:0.62rem;">Read &#8594;</a>
                </div>
            </div>

            <div class="card">
                <img class="card-img" src="https://images.unsplash.com/photo-1475738198235-5e1f7f8d8395?w=600&q=80" alt="Community" loading="lazy">
                <div class="card-body">
                    <span class="news-category">Community</span>
                    <span class="news-date">Oct 3, 2024</span>
                    <h3 class="card-title mt-1">Fan Art Showcase: October 2024</h3>
                    <p class="card-text">Twenty-eight pieces from the community's most talented artists. From oil painting-style portraits to pixel art dungeons, this month was exceptional.</p>
                </div>
                <div class="card-footer">
                    <span></span>
                    <a href="#" class="text-crimson font-cinzel" style="font-size:0.62rem;">Read &#8594;</a>
                </div>
            </div>

            <div class="card">
                <img class="card-img" src="https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=600&q=80" alt="DLC" loading="lazy">
                <div class="card-body">
                    <span class="news-category">DLC Announcement</span>
                    <span class="news-date">Sep 20, 2024</span>
                    <h3 class="card-title mt-1">The Sunken City: First Look</h3>
                    <p class="card-text">The first screenshots and concept art for the upcoming expansion. New zone: The Drowned Archives. New class: The Diver. New horrors: unnamed.</p>
                </div>
                <div class="card-footer">
                    <span></span>
                    <a href="#" class="text-crimson font-cinzel" style="font-size:0.62rem;">Read &#8594;</a>
                </div>
            </div>

            <div class="card">
                <img class="card-img" src="https://images.unsplash.com/photo-1534447677768-be436bb09401?w=600&q=80" alt="Accessibility" loading="lazy">
                <div class="card-body">
                    <span class="news-category">Accessibility</span>
                    <span class="news-date">Sep 8, 2024</span>
                    <h3 class="card-title mt-1">New Accessibility Options in 2.9</h3>
                    <p class="card-text">Expanded colorblind modes, adjustable combat speed, text size scaling, and an optional stress-free mode that preserves all narrative without permadeath.</p>
                </div>
                <div class="card-footer">
                    <span></span>
                    <a href="#" class="text-crimson font-cinzel" style="font-size:0.62rem;">Read &#8594;</a>
                </div>
            </div>

            <div class="card">
                <img class="card-img" src="https://images.unsplash.com/photo-1476231682828-37e571bc172f?w=600&q=80" alt="Console" loading="lazy">
                <div class="card-body">
                    <span class="news-category">Platform</span>
                    <span class="news-date">Aug 25, 2024</span>
                    <h3 class="card-title mt-1">Console Version: Full Feature Parity Achieved</h3>
                    <p class="card-text">The console versions of Veil of Perdition now include all PC content including both DLC expansions. The darkness crosses platforms.</p>
                </div>
                <div class="card-footer">
                    <span></span>
                    <a href="#" class="text-crimson font-cinzel" style="font-size:0.62rem;">Read &#8594;</a>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- NEWSLETTER -->
<section style="background:var(--dark-card); border-top:1px solid var(--border-dark); border-bottom:1px solid var(--border-dark); padding:4rem 2rem; text-align:center;">
    <div class="container-sm">
        <span class="section-eyebrow">Never Miss a Dispatch</span>
        <h2 class="section-title">Stay Informed</h2>
        <p class="font-im-fell" style="font-size:1.05rem; color:var(--mid-grey); margin-bottom:2rem; line-height:1.7;">
            The darkness sends its own notifications. Subscribe to receive major updates, patch notes, and community features directly.
        </p>
        <form style="display:flex; gap:0.8rem; max-width:440px; margin:0 auto;" onsubmit="return false;">
            <input type="email" placeholder="your.address@realm.com"
                   style="flex:1; padding:0.75rem 1rem; background:rgba(8,6,4,0.8); border:1px solid var(--border-mid); color:var(--cream); font-family:'Crimson Text',serif; font-size:1rem; outline:none;">
            <button type="submit" class="btn btn-primary" style="white-space:nowrap; font-size:0.68rem;">Subscribe</button>
        </form>
    </div>
</section>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
