<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="/WEB-INF/views/layout/header.jsp" %>

        <!-- HERO -->
        <section class="hero">
            <div class="hero-bg" style="background-image:url('${pageContext.request.contextPath}/img/back.png');">
            </div>
            <div class="hero-overlay"></div>
            <div class="hero-vignette"></div>

        <!-- ============================================================
                                    HOME PAGE
        ============================================================= -->
            <div class="hero-content">
                <div >
                    <div class="hero-eyebrow">Dark Fantasy RPG</div>
                    <h1 class="hero-title">DARK MOON</h1>
                    <p class="hero-title-sub">Into the Cursed Abyss</p>
                    <div class="hero-divider"></div>
                    <p class="hero-desc">
                        The estate has fallen. Ancient evils stir beneath the crumbling earth.
                        You must forge a band of broken souls and descend into the darkness—
                        knowing that sanity is rarer than gold, and mercy is a luxury you cannot afford.
                    </p>
                    <div class="hero-buttons">
                        <a href="/story" class="btn btn-secondary btn-primary"> Begin the Journey</a>
                        <a href="${pageContext.request.contextPath}/files/DARK_MOON.zip" download="DARK_MOON.zip"
                            class="btn btn-primary">
                            &#9670; Download
                        </a>
                        <button onclick="openVideo()" class="btn btn-primary">
                            Watch Trailer
                        </button>
                    </div>
                </div>

            </div>
        </section>

        <!-- ============================================================
                                    VIDEO
        ============================================================= -->

        <div id="videoModal" class="video-modal" onclick="closeVideo()">

            <div class="video-container" onclick="event.stopPropagation()">

                <video id="videoPlayer" controls>
                    <source src="${pageContext.request.contextPath}/video/trailer.mp4" type="video/mp4">
                </video>

            </div>

        </div>


        <!-- ============================================================
                                    GAME FEATURES
        ============================================================= -->

        <section class="section section-surface" style="padding:2.5rem 2rem;">
            <div class="container">
                <div style="display:grid; grid-template-columns:repeat(4,1fr); gap:1rem; text-align:center;">
                    <div style="padding:1.2rem; border:1px solid var(--border-dark);">
                        <span style="font-size:1.8rem; display:block; margin-bottom:0.5rem;">&#9760;</span>
                        <span class="font-cinzel text-parchment"
                            style="font-size:0.7rem; letter-spacing:0.15em; text-transform:uppercase;">Permadeath</span>
                    </div>
                    <div style="padding:1.2rem; border:1px solid var(--border-dark);">
                        <span style="font-size:1.8rem; display:block; margin-bottom:0.5rem;">&#128997;</span>
                        <span class="font-cinzel text-parchment"
                            style="font-size:0.7rem; letter-spacing:0.15em; text-transform:uppercase;">Sanity
                            System</span>
                    </div>
                    <div style="padding:1.2rem; border:1px solid var(--border-dark);">
                        <span style="font-size:1.8rem; display:block; margin-bottom:0.5rem;">&#9876;</span>
                        <span class="font-cinzel text-parchment"
                            style="font-size:0.7rem; letter-spacing:0.15em; text-transform:uppercase;">100+
                            Relics</span>
                    </div>
                    <div style="padding:1.2rem; border:1px solid var(--border-dark);">
                        <span style="font-size:1.8rem; display:block; margin-bottom:0.5rem;">&#127981;</span>
                        <span class="font-cinzel text-parchment"
                            style="font-size:0.7rem; letter-spacing:0.15em; text-transform:uppercase;">Procedural
                            Dungeons</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- ================================================================
                                    STORY TEASER
        ================================================================= -->

        <section class="section section-dark">
            <div class="container">
                <div class="split-section">
                    <div class="split-img-wrapper">
                        <img src="${pageContext.request.contextPath}/img/story.png"
                            alt="Dark Forest" loading="lazy">
                    </div>
                    <div class="split-text">
                        <div class="split-tag">The Beginning</div>
                        <h2 class="split-title">A Legacy of Darkness</h2>
                        <div class="split-divider"></div>
                        <p class="split-body">
                            Your ancestor, consumed by forbidden knowledge, unleashed horrors upon the land.
                            The estate that once stood as a beacon of power now festers with ancient evil.
                            You are the last of the bloodline—cursed to clean up the sins of your forebears,
                            or be consumed by them.
                        </p>
                        <p class="split-body">
                            Recruit the desperate and the damned. Arm them with whatever scraps of hope remain.
                            Descend into the Darkest Dungeon.
                        </p>
                        <a href="/story" class="btn btn-primary">Read the Full Story</a>
                    </div>
                </div>
            </div>
        </section>


        <!-- ==================================================================
                                    CHARACTER PREVIEW
        =================================================================== -->




        <section class="section section-darker">
            <div class="container">
                <div class="section-header">
                    <span class="section-eyebrow">The Condemned</span>
                    <h2 class="section-title">Broken Heroes</h2>
                    <p class="section-subtitle">Shattered souls bound together by desperation and dark purpose.</p>
                    <div class="section-divider"></div>
                </div>
                <div class="grid-4">
                    <div class="character-card">
                        <img class="character-card-img"
                            src="${pageContext.request.contextPath}/img/Kethanhtrung.png"
                            alt="Plague Doctor" loading="lazy">
                        <div class="character-card-body">
                            <span class="character-class">Human</span>
                            <h3 class="character-name">Clark</h3>
                            <div class="character-quote">"Science shall conquer even death."</div>
                        </div>
                    </div>
                    <div class="character-card">
                        <img class="character-card-img"
                            src="${pageContext.request.contextPath}/img/Thomo.png" alt="Hellion"
                            loading="lazy">
                        <div class="character-card-body">
                            <span class="character-class">Demon</span>
                            <h3 class="character-name">Liễu Như Yên</h3>
                            <div class="character-quote">"Let blood paint the ground."</div>
                        </div>
                    </div>
                    <div class="character-card">
                        <img class="character-card-img"
                            src="${pageContext.request.contextPath}/img/Giaochu.png" alt="Crusader"
                            loading="lazy">
                        <div class="character-card-body">
                            <span class="character-class">Demon</span>
                            <h3 class="character-name">Đỗ Nhật Quang</h3>
                            <div class="character-quote">"My faith is my shield."</div>
                        </div>
                    </div>
                    <div class="character-card">
                        <img class="character-card-img"
                            src="${pageContext.request.contextPath}/img/Dieutravien.png" alt="Vestal"
                            loading="lazy">
                        <div class="character-card-body">
                            <span class="character-class">Elf</span>
                            <h3 class="character-name">Mahiru</h3>
                            <div class="character-quote">"Even light casts shadows."</div>
                        </div>
                    </div>
                </div>
                <div class="text-center mt-4">
                    <a href="/characters" class="btn btn-secondary">View All Characters</a>
                </div>
            </div>
        </section>


        <!-- ==================================================================
                                    QUOTE SECTION
        =================================================================== -->


        <section class="section section-surface" style="padding:5rem 2rem;">
            <div class="container-sm">
                <div class="quote-block">
                    <p class="quote-text">
                        Remember: it is not about the destination. It never was.
                        The descent is the purpose. The darkness is the answer.
                        You will either emerge having conquered the nightmare—
                        or you will not emerge at all.
                    </p>
                    <span class="quote-author">— The Ancestor, Final Testament</span>
                </div>
            </div>
        </section>

        <!-- ==================================================================
                                    NEWS PREVIEW
        =================================================================== -->


        <section class="section section-dark">
            <div class="container">
                <div class="section-header">
                    <span class="section-eyebrow">Dispatches from the Abyss</span>
                    <h2 class="section-title">Latest News</h2>
                    <div class="section-divider"></div>
                </div>
                <div class="grid-3">
                    <div class="card">
                        <img class="card-img"
                            src="https://images.unsplash.com/photo-1534447677768-be436bb09401?w=600&q=80" alt="News 1"
                            loading="lazy">
                        <div class="card-body">
                            <span class="card-tag">Update 2.4 — Balance Patch</span>
                            <h3 class="card-title">The Crimson Court Rebalanced</h3>
                            <p class="card-text">The bloodsucking aristocrats have been recalibrated. New affliction
                                resistances and combat flows tested over 6 months of internal play.</p>
                        </div>
                        <div class="card-footer">
                            <span class="font-cinzel text-grey" style="font-size:0.58rem; letter-spacing:0.15em;">Oct
                                15, 2024</span>
                            <a href="/news" class="text-crimson font-cinzel"
                                style="font-size:0.62rem; letter-spacing:0.15em;">Read More &#8594;</a>
                        </div>
                    </div>
                    <div class="card">
                        <img class="card-img"
                            src="https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=600&q=80" alt="News 2"
                            loading="lazy">
                        <div class="card-body">
                            <span class="card-tag">DLC — The Sunken City</span>
                            <h3 class="card-title">New Region: The Drowned Archives</h3>
                            <p class="card-text">Beneath the tidal ruins lie forgotten tomes of forbidden lore. New
                                enemies, new relics, new ways to meet your end.</p>
                        </div>
                        <div class="card-footer">
                            <span class="font-cinzel text-grey" style="font-size:0.58rem; letter-spacing:0.15em;">Oct 3,
                                2024</span>
                            <a href="/news" class="text-crimson font-cinzel"
                                style="font-size:0.62rem; letter-spacing:0.15em;">Read More &#8594;</a>
                        </div>
                    </div>
                    <div class="card">
                        <img class="card-img"
                            src="https://images.unsplash.com/photo-1475738198235-5e1f7f8d8395?w=600&q=80" alt="News 3"
                            loading="lazy">
                        <div class="card-body">
                            <span class="card-tag">Community</span>
                            <h3 class="card-title">Fan Art Showcase: September</h3>
                            <p class="card-text">The community has once again produced breathtaking works born from
                                darkness. This month's showcase features 24 pieces.</p>
                        </div>
                        <div class="card-footer">
                            <span class="font-cinzel text-grey" style="font-size:0.58rem; letter-spacing:0.15em;">Sep
                                28, 2024</span>
                            <a href="/news" class="text-crimson font-cinzel"
                                style="font-size:0.62rem; letter-spacing:0.15em;">Read More &#8594;</a>
                        </div>
                    </div>
                </div>
                <div class="text-center mt-4">
                    <a href="/news" class="btn btn-secondary">All News</a>
                </div>
            </div>
        </section>



        <%@ include file="/WEB-INF/views/layout/footer.jsp" %>