<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<section class="page-hero">
    <div class="page-hero-bg" style="background-image:url('https://images.unsplash.com/photo-1599508704512-2f19efd1e35f?w=1920&q=80');"></div>
    <div class="page-hero-overlay"></div>
    <div class="page-hero-content">
        <p class="page-hero-eyebrow">&#9670; Arsenal of Despair &#9670;</p>
        <h1 class="page-hero-title">Weapons &amp; Relics</h1>
        <p class="page-hero-subtitle">Every blade has tasted blood. Every relic carries a price. The question is whether you are willing to pay it.</p>
    </div>
</section>

<!-- WEAPONS INTRO -->
<section style="background:var(--dark-surface); padding:3rem 2rem; text-align:center;">
    <div class="container-sm">
        <p class="font-im-fell" style="font-size:1.15rem; color:var(--mid-grey); line-height:1.9;">
            Over 400 weapons, trinkets, and relics lie scattered throughout the cursed dungeons.
            Some grant power. Some grant madness. Some grant both, and let you choose which you prefer.
        </p>
    </div>
</section>

<!-- WEAPONS LIST -->
<section class="section section-dark">
    <div class="container">
        <div class="section-header">
            <span class="section-eyebrow">The Armory</span>
            <h2 class="section-title">Weapons of the Damned</h2>
            <div class="section-divider"></div>
        </div>
        <div style="display:flex; flex-direction:column; gap:1rem;">

            <div class="weapon-card">
                <span class="weapon-icon">&#9876;</span>
                <div>
                    <span class="weapon-rarity rarity-legendary">&#9670; Legendary</span>
                    <h3 class="weapon-name">The Ancestor's Knapsack</h3>
                    <p class="weapon-desc">"He carried it through every expedition. What it contains has never been fully catalogued. Perhaps for good reason."
                        <br><small style="color:var(--ash-grey); font-style:normal;">+15% Crit, +2 Speed, -10 Stress Resistance</small>
                    </p>
                </div>
            </div>

            <div class="weapon-card">
                <span class="weapon-icon">&#128481;</span>
                <div>
                    <span class="weapon-rarity rarity-cursed">&#9670; Cursed</span>
                    <h3 class="weapon-name">Blade of the Unmaking</h3>
                    <p class="weapon-desc">"It does not cut through armor. It cuts through the concept of armor. Heroes who wield it report hearing it speak to them in the dark."
                        <br><small style="color:var(--ash-grey); font-style:normal;">+25 Damage, +30% Blight Chance, Stress +5 on equip</small>
                    </p>
                </div>
            </div>

            <div class="weapon-card">
                <span class="weapon-icon">&#128013;</span>
                <div>
                    <span class="weapon-rarity rarity-rare">&#9670; Rare</span>
                    <h3 class="weapon-name">Tome of Eldritch Whispers</h3>
                    <p class="weapon-desc">"The text rearranges itself when you're not looking. The notes in the margins are not yours, but they are in your handwriting."
                        <br><small style="color:var(--ash-grey); font-style:normal;">+20% Skill Damage, Eldritch attacks marked</small>
                    </p>
                </div>
            </div>

            <div class="weapon-card">
                <span class="weapon-icon">&#9855;</span>
                <div>
                    <span class="weapon-rarity rarity-uncommon">&#9670; Uncommon</span>
                    <h3 class="weapon-name">Hallowed Cudgel</h3>
                    <p class="weapon-desc">"Blessed by a priest who later fled the estate screaming. The blessing held, though. That's what matters."
                        <br><small style="color:var(--ash-grey); font-style:normal;">+8 Damage vs Undead, +5 Stress Resistance</small>
                    </p>
                </div>
            </div>

            <div class="weapon-card">
                <span class="weapon-icon">&#127981;</span>
                <div>
                    <span class="weapon-rarity rarity-cursed">&#9670; Cursed</span>
                    <h3 class="weapon-name">The Crimson Chalice</h3>
                    <p class="weapon-desc">"Drink from it and you are healed. Drink too often and you begin to need it. The Court watches those who need it."
                        <br><small style="color:var(--ash-grey); font-style:normal;">Heal 8 HP on kill. After 5 kills: Contract Crimson Curse</small>
                    </p>
                </div>
            </div>

            <div class="weapon-card">
                <span class="weapon-icon">&#128208;</span>
                <div>
                    <span class="weapon-rarity rarity-rare">&#9670; Rare</span>
                    <h3 class="weapon-name">Vestal's Reliquary</h3>
                    <p class="weapon-desc">"It is said to contain the finger-bone of a saint. Whether that saint would approve of how it is being used is another matter entirely."
                        <br><small style="color:var(--ash-grey); font-style:normal;">+15% Healing Skills, -5 Damage Taken from Eldritch</small>
                    </p>
                </div>
            </div>

            <div class="weapon-card">
                <span class="weapon-icon">&#9763;</span>
                <div>
                    <span class="weapon-rarity rarity-legendary">&#9670; Legendary</span>
                    <h3 class="weapon-name">Signet of the Ancestor</h3>
                    <p class="weapon-desc">"He wore this to every summoning. It still smells of whatever he was burning on those evenings. The heroes who wear it hear his voice on long expeditions."
                        <br><small style="color:var(--ash-grey); font-style:normal;">+15% All Resistances, Ancestor's Commentary unlocked in camp</small>
                    </p>
                </div>
            </div>

            <div class="weapon-card">
                <span class="weapon-icon">&#127935;</span>
                <div>
                    <span class="weapon-rarity rarity-common">&#9670; Common</span>
                    <h3 class="weapon-name">Torch of Vigil</h3>
                    <p class="weapon-desc">"The light it casts never quite reaches the corners. But having it is better than not having it. Marginally."
                        <br><small style="color:var(--ash-grey); font-style:normal;">+15 Light. Cannot be extinguished by enemy actions.</small>
                    </p>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- RARITY SYSTEM -->
<section class="section section-surface">
    <div class="container">
        <div class="section-header">
            <span class="section-eyebrow">Classification</span>
            <h2 class="section-title">Rarity &amp; Risk</h2>
            <p class="section-subtitle">Greater power demands greater sacrifice. The dungeon is not generous.</p>
            <div class="section-divider"></div>
        </div>
        <div class="grid-3">
            <div class="card" style="padding:2rem; text-align:center;">
                <span class="weapon-rarity rarity-common" style="font-size:0.8rem; margin-bottom:0.8rem; display:block;">&#9670; COMMON</span>
                <p class="card-text">Dependable equipment with modest bonuses. No downsides. The foundation of every expedition loadout.</p>
            </div>
            <div class="card" style="padding:2rem; text-align:center;">
                <span class="weapon-rarity rarity-uncommon" style="font-size:0.8rem; margin-bottom:0.8rem; display:block;">&#9670; UNCOMMON</span>
                <p class="card-text">Improved stats and situational bonuses. Slight quirks but generally beneficial. Worth seeking out.</p>
            </div>
            <div class="card" style="padding:2rem; text-align:center;">
                <span class="weapon-rarity rarity-rare" style="font-size:0.8rem; margin-bottom:0.8rem; display:block;">&#9670; RARE</span>
                <p class="card-text">Powerful abilities with meaningful tradeoffs. Build your party around these when possible.</p>
            </div>
            <div class="card" style="padding:2rem; text-align:center;">
                <span class="weapon-rarity rarity-legendary" style="font-size:0.8rem; margin-bottom:0.8rem; display:block;">&#9670; LEGENDARY</span>
                <p class="card-text">Game-altering power. Party-defining. Each piece is unique. Requires late-game access to obtain.</p>
            </div>
            <div class="card" style="padding:2rem; text-align:center;">
                <span class="weapon-rarity rarity-cursed" style="font-size:0.8rem; margin-bottom:0.8rem; display:block;">&#9670; CURSED</span>
                <p class="card-text">The most dangerous items in the dungeon. Power beyond measure—with consequences beyond reckoning. Use only with full understanding of the cost.</p>
            </div>
            <div class="card" style="padding:2rem; text-align:center;">
                <span style="font-family:'Cinzel',serif; font-size:0.8rem; color:var(--mid-grey); margin-bottom:0.8rem; display:block;">&#9670; UNIQUE</span>
                <p class="card-text">Boss drops with narrative significance. Each tells a story. Some have multiple interaction states based on your party's history.</p>
            </div>
        </div>
    </div>
</section>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
