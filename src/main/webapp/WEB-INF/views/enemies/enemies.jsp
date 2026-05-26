<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<section class="page-hero">
    <div class="page-hero-bg" style="background-image:url('https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=1920&q=80');"></div>
    <div class="page-hero-overlay"></div>
    <div class="page-hero-content">
        <p class="page-hero-eyebrow">&#9670; Creatures of the Dark &#9670;</p>
        <h1 class="page-hero-title">Enemies</h1>
        <p class="page-hero-subtitle">They do not hate you. They do not fear you. They simply feed—on flesh, on sanity, on the fragile thread of hope.</p>
    </div>
</section>

<!-- ENEMY TYPE INTRO -->
<section style="background:var(--dark-surface); padding:3rem 2rem;">
    <div class="container">
        <div style="display:grid; grid-template-columns:repeat(5,1fr); gap:1px; background:var(--border-dark);">
            <div style="background:var(--dark-bg); padding:1.5rem 1rem; text-align:center;">
                <span style="font-size:1.8rem; display:block; margin-bottom:0.5rem;">&#9760;</span>
                <span class="font-cinzel" style="font-size:0.6rem; letter-spacing:0.2em; text-transform:uppercase; color:var(--light-grey);">Undead</span>
            </div>
            <div style="background:var(--dark-bg); padding:1.5rem 1rem; text-align:center;">
                <span style="font-size:1.8rem; display:block; margin-bottom:0.5rem;">&#128027;</span>
                <span class="font-cinzel" style="font-size:0.6rem; letter-spacing:0.2em; text-transform:uppercase; color:var(--light-grey);">Eldritch</span>
            </div>
            <div style="background:var(--dark-bg); padding:1.5rem 1rem; text-align:center;">
                <span style="font-size:1.8rem; display:block; margin-bottom:0.5rem;">&#128032;</span>
                <span class="font-cinzel" style="font-size:0.6rem; letter-spacing:0.2em; text-transform:uppercase; color:var(--light-grey);">Beast</span>
            </div>
            <div style="background:var(--dark-bg); padding:1.5rem 1rem; text-align:center;">
                <span style="font-size:1.8rem; display:block; margin-bottom:0.5rem;">&#9820;</span>
                <span class="font-cinzel" style="font-size:0.6rem; letter-spacing:0.2em; text-transform:uppercase; color:var(--light-grey);">Bloodsucker</span>
            </div>
            <div style="background:var(--dark-bg); padding:1.5rem 1rem; text-align:center;">
                <span style="font-size:1.8rem; display:block; margin-bottom:0.5rem;">&#128008;</span>
                <span class="font-cinzel" style="font-size:0.6rem; letter-spacing:0.2em; text-transform:uppercase; color:var(--light-grey);">Brigand</span>
            </div>
        </div>
    </div>
</section>

<!-- ENEMIES GRID -->
<section class="section section-dark">
    <div class="container">
        <div class="section-header">
            <span class="section-eyebrow">The Bestiary</span>
            <h2 class="section-title">Know Your Enemy</h2>
            <div class="section-divider"></div>
        </div>
        <div class="grid-3">

            <div class="enemy-card">
                <span class="enemy-icon">&#9760;</span>
                <span class="enemy-type">Undead — Ruins</span>
                <h3 class="enemy-name">Bone Rabble</h3>
                <p class="enemy-desc">The animated remnants of the estate's former servants. Mindless, endless, and utterly without mercy. Their sheer numbers are their greatest weapon.</p>
                <span class="enemy-threat threat-low">&#9670; LOW THREAT</span>
            </div>

            <div class="enemy-card">
                <span class="enemy-icon">&#128027;</span>
                <span class="enemy-type">Eldritch — Darkest Dungeon</span>
                <h3 class="enemy-name">Shambler</h3>
                <p class="enemy-desc">A creature of pure void, summoned by careless ritual. It exists to unmake. Every hero who gazes upon it loses a fragment of their sanity permanently.</p>
                <span class="enemy-threat threat-extreme">&#9670; EXTREME THREAT</span>
            </div>

            <div class="enemy-card">
                <span class="enemy-icon">&#128032;</span>
                <span class="enemy-type">Beast — Weald</span>
                <h3 class="enemy-name">Werewolf</h3>
                <p class="enemy-desc">Once a man—now barely that. The affliction runs deep. Its howl inflicts stress upon the entire party. Its claws inflict everything else.</p>
                <span class="enemy-threat threat-high">&#9670; HIGH THREAT</span>
            </div>

            <div class="enemy-card">
                <span class="enemy-icon">&#128025;</span>
                <span class="enemy-type">Bloodsucker — Crimson Court</span>
                <h3 class="enemy-name">Fanatic Bloodletter</h3>
                <p class="enemy-desc">A twisted member of the Crimson Court who has drunk too deep. Resistant to most damage types. Infects the party with the Crimson Curse on contact.</p>
                <span class="enemy-threat threat-high">&#9670; HIGH THREAT</span>
            </div>

            <div class="enemy-card">
                <span class="enemy-icon">&#128048;</span>
                <span class="enemy-type">Beast — Warrens</span>
                <h3 class="enemy-name">Swine God</h3>
                <p class="enemy-desc">An ancient abomination worshipped by the pigmen of the Warrens. Boss-class entity. Its sheer bulk deflects attacks aimed at the back row.</p>
                <span class="enemy-threat threat-extreme">&#9670; EXTREME THREAT</span>
            </div>

            <div class="enemy-card">
                <span class="enemy-icon">&#9889;</span>
                <span class="enemy-type">Eldritch — Cove</span>
                <h3 class="enemy-name">Deep Starlord</h3>
                <p class="enemy-desc">It drifted up from the sunken depths of the ocean beyond the estate. It brings the void with it. Looking at it too long causes immediate affliction.</p>
                <span class="enemy-threat threat-extreme">&#9670; EXTREME THREAT</span>
            </div>

            <div class="enemy-card">
                <span class="enemy-icon">&#128122;</span>
                <span class="enemy-type">Undead — Ruins</span>
                <h3 class="enemy-name">Drowned Crew</h3>
                <p class="enemy-desc">Sailors who perished in the flooded crypts below the estate. They carry ancient weapons still sharp enough to end a life. They cannot be reasoned with. They never could.</p>
                <span class="enemy-threat threat-medium">&#9670; MEDIUM THREAT</span>
            </div>

            <div class="enemy-card">
                <span class="enemy-icon">&#127981;</span>
                <span class="enemy-type">Brigand — Weald</span>
                <h3 class="enemy-name">Brigand Fusilier</h3>
                <p class="enemy-desc">Hired criminals who arrived seeking easy pickings from the ruined estate. Instead they found madness. Now they guard these halls as surely as any monster.</p>
                <span class="enemy-threat threat-medium">&#9670; MEDIUM THREAT</span>
            </div>

            <div class="enemy-card">
                <span class="enemy-icon">&#128013;</span>
                <span class="enemy-type">Eldritch — Darkest Dungeon</span>
                <h3 class="enemy-name">The Collector</h3>
                <p class="enemy-desc">A wandering entity that has gathered the heads of fallen heroes and continues to serve them—undead, hollowed, against their former allies. It remembers their weaknesses.</p>
                <span class="enemy-threat threat-extreme">&#9670; EXTREME THREAT</span>
            </div>

        </div>
    </div>
</section>

<!-- BOSSES SECTION -->
<section class="section section-surface">
    <div class="container">
        <div class="section-header">
            <span class="section-eyebrow">End of the Line</span>
            <h2 class="section-title">Dungeon Bosses</h2>
            <p class="section-subtitle">Each dungeon holds a boss of staggering power. They are not obstacles. They are consequences.</p>
            <div class="section-divider"></div>
        </div>
        <div class="grid-2">
            <div class="split-section" style="padding:2rem 0;">
                <div class="split-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=600&q=80" alt="Necromancer Lord" loading="lazy">
                </div>
                <div class="split-text">
                    <div class="split-tag">Ruins Boss</div>
                    <h3 class="split-title">Necromancer Lord</h3>
                    <div class="split-divider"></div>
                    <p class="split-body">He was the Ancestor's most devoted student. Now he rules the Ruins, sustained by death magic and endless hatred. He resurrects his own minions mid-battle.</p>
                    <span class="enemy-threat threat-extreme" style="display:inline-block;">&#9670; EXTREME THREAT</span>
                </div>
            </div>
            <div class="split-section" style="padding:2rem 0;">
                <div class="split-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1476231682828-37e571bc172f?w=600&q=80" alt="Hag" loading="lazy">
                </div>
                <div class="split-text">
                    <div class="split-tag">Weald Boss</div>
                    <h3 class="split-title">The Hag</h3>
                    <div class="split-divider"></div>
                    <p class="split-body">An ancient creature that predates the estate itself. She stuffs heroes into her cauldron—removing them from combat entirely while she cooks them alive.</p>
                    <span class="enemy-threat threat-extreme" style="display:inline-block;">&#9670; EXTREME THREAT</span>
                </div>
            </div>
        </div>
    </div>
</section>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
