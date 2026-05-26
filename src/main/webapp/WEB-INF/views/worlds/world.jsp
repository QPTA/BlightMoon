<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<section class="page-hero">
    <div class="page-hero-bg" style="background-image:url('https://images.unsplash.com/photo-1475738198235-5e1f7f8d8395?w=1920&q=80');"></div>
    <div class="page-hero-overlay"></div>
    <div class="page-hero-content">
        <p class="page-hero-eyebrow">&#9670; Cursed Lands &#9670;</p>
        <h1 class="page-hero-title">The World</h1>
        <p class="page-hero-subtitle">Each corner of the estate holds a different horror. Each horror has a different lesson. You will learn them all.</p>
    </div>
</section>

<!-- WORLD OVERVIEW -->
<section style="background:var(--dark-surface); padding:4rem 2rem;">
    <div class="container">
        <div class="split-section">
            <div class="split-text">
                <div class="split-tag">The Estate</div>
                <h2 class="split-title">A World Consumed</h2>
                <div class="split-divider"></div>
                <p class="split-body">
                    The estate was once the jewel of the region—a sprawling property with ancestral halls,
                    working farms, productive mines, and a coastline rich with commerce. That was before.
                </p>
                <p class="split-body">
                    Now the land itself has been poisoned by the ritual your ancestor performed.
                    The dungeons beneath the earth have opened, and the creatures within have spread
                    into every corner of the property. The hamlet—the last outpost of civilization—
                    clings to existence at its center.
                </p>
                <p class="split-body">
                    Five distinct dungeon regions surround it, each with its own ecology of horror,
                    its own atmosphere of dread, and its own final confrontation waiting at the end.
                </p>
            </div>
            <div class="split-img-wrapper">
                <img src="https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=800&q=80" alt="The Estate Map" loading="lazy">
            </div>
        </div>
    </div>
</section>

<!-- LOCATIONS GRID -->
<section class="section section-dark">
    <div class="container">
        <div class="section-header">
            <span class="section-eyebrow">Five Regions</span>
            <h2 class="section-title">Dungeons of the Estate</h2>
            <div class="section-divider"></div>
        </div>
        <div class="grid-3">

            <div class="location-card">
                <div class="location-danger">
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull">&#9760;</span>
                    <span class="danger-skull">&#9760;</span>
                    <span class="danger-skull">&#9760;</span>
                </div>
                <h3 style="font-family:'Cinzel',serif; color:var(--cream); margin-bottom:0.5rem;">The Ruins</h3>
                <span class="enemy-type" style="display:block; margin-bottom:0.8rem;">Recommended: Apprentice</span>
                <p class="card-text">
                    The ancestral halls of the estate, now overrun by the animated dead. Stone corridors
                    and flooded crypts wind beneath the former grandeur. The Necromancer Lord holds court here.
                </p>
                <div style="margin-top:1rem; padding-top:1rem; border-top:1px solid var(--border-dark);">
                    <span style="font-family:'Cinzel',serif; font-size:0.6rem; letter-spacing:0.15em; text-transform:uppercase; color:var(--ash-grey);">Primary Threats: Undead, Ghosts</span>
                </div>
            </div>

            <div class="location-card">
                <div class="location-danger">
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull">&#9760;</span>
                    <span class="danger-skull">&#9760;</span>
                </div>
                <h3 style="font-family:'Cinzel',serif; color:var(--cream); margin-bottom:0.5rem;">The Weald</h3>
                <span class="enemy-type" style="display:block; margin-bottom:0.8rem;">Recommended: Veteran</span>
                <p class="card-text">
                    A forest that was once a manicured garden. Now twisted beyond recognition,
                    the trees themselves seem to watch. Brigands have made their camp here,
                    driven to madness by what shares the forest with them.
                </p>
                <div style="margin-top:1rem; padding-top:1rem; border-top:1px solid var(--border-dark);">
                    <span style="font-family:'Cinzel',serif; font-size:0.6rem; letter-spacing:0.15em; text-transform:uppercase; color:var(--ash-grey);">Primary Threats: Beasts, Brigands, Hag</span>
                </div>
            </div>

            <div class="location-card">
                <div class="location-danger">
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull">&#9760;</span>
                </div>
                <h3 style="font-family:'Cinzel',serif; color:var(--cream); margin-bottom:0.5rem;">The Warrens</h3>
                <span class="enemy-type" style="display:block; margin-bottom:0.8rem;">Recommended: Veteran</span>
                <p class="card-text">
                    A labyrinth of tunnels carved by the pigmen who have multiplied in the dark.
                    Narrow passages force tactical adjustments. The stench alone inflicts stress.
                    The Swine God waits in the deepest chamber.
                </p>
                <div style="margin-top:1rem; padding-top:1rem; border-top:1px solid var(--border-dark);">
                    <span style="font-family:'Cinzel',serif; font-size:0.6rem; letter-spacing:0.15em; text-transform:uppercase; color:var(--ash-grey);">Primary Threats: Swine, Corpses</span>
                </div>
            </div>

            <div class="location-card">
                <div class="location-danger">
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull active">&#9760;</span>
                    <span class="danger-skull">&#9760;</span>
                </div>
                <h3 style="font-family:'Cinzel',serif; color:var(--cream); margin-bottom:0.5rem;">The Cove</h3>
                <span class="enemy-type" style="display:block; margin-bottom:0.8rem;">Recommended: Champion</span>
                <p class="card-text">
                    Sea caves eroded into the coastal cliffs of the estate. Something came out of the deep ocean
                    and has been living here since before the Ancestor's experiments. The water itself seems wrong.
                </p>
                <div style="margin-top:1rem; padding-top:1rem; border-top:1px solid var(--border-dark);">
                    <span style="font-family:'Cinzel',serif; font-size:0.6rem; letter-spacing:0.15em; text-transform:uppercase; color:var(--ash-grey);">Primary Threats: Eldritch, Fishmen</span>
                </div>
            </div>

            <div class="location-card" style="border-color:var(--blood-red); box-shadow:0 0 30px rgba(139,0,0,0.2);">
                <div class="location-danger">
                    <span class="danger-skull active" style="color:#FF0000; filter:drop-shadow(0 0 6px red);">&#9760;</span>
                    <span class="danger-skull active" style="color:#FF0000; filter:drop-shadow(0 0 6px red);">&#9760;</span>
                    <span class="danger-skull active" style="color:#FF0000; filter:drop-shadow(0 0 6px red);">&#9760;</span>
                    <span class="danger-skull active" style="color:#FF0000; filter:drop-shadow(0 0 6px red);">&#9760;</span>
                    <span class="danger-skull active" style="color:#FF0000; filter:drop-shadow(0 0 6px red);">&#9760;</span>
                </div>
                <h3 style="font-family:'Cinzel',serif; color:var(--cream); margin-bottom:0.5rem; text-shadow:0 0 15px rgba(255,0,0,0.4);">The Darkest Dungeon</h3>
                <span class="enemy-type" style="display:block; margin-bottom:0.8rem; color:var(--crimson);">Recommended: Champion — Maximum Preparation</span>
                <p class="card-text">
                    The final dungeon. The reason for all of this. The ancient evil at the heart of the Ancestor's
                    transgression lives here. Nothing that enters this place leaves unchanged—if it leaves at all.
                    This is the end of the road.
                </p>
                <div style="margin-top:1rem; padding-top:1rem; border-top:1px solid var(--border-dark);">
                    <span style="font-family:'Cinzel',serif; font-size:0.6rem; letter-spacing:0.15em; text-transform:uppercase; color:var(--crimson);">Primary Threats: The Heart of Darkness</span>
                </div>
            </div>

            <div class="location-card">
                <div class="location-danger">
                    <span class="danger-skull active" style="color:var(--gold);">&#9760;</span>
                    <span class="danger-skull active" style="color:var(--gold);">&#9760;</span>
                    <span class="danger-skull active" style="color:var(--gold);">&#9760;</span>
                    <span class="danger-skull active" style="color:var(--gold);">&#9760;</span>
                    <span class="danger-skull">&#9760;</span>
                </div>
                <h3 style="font-family:'Cinzel',serif; color:var(--cream); margin-bottom:0.5rem;">The Crimson Court</h3>
                <span class="enemy-type" style="display:block; margin-bottom:0.8rem;">DLC — Champion Level</span>
                <p class="card-text">
                    Once the Ancestor's greatest social achievement—a gathering of aristocratic bloodsuckers
                    who took his invitation too literally. Now they haunt the manor's upper floors,
                    spreading their curse to any hero foolish enough to enter.
                </p>
                <div style="margin-top:1rem; padding-top:1rem; border-top:1px solid var(--border-dark);">
                    <span style="font-family:'Cinzel',serif; font-size:0.6rem; letter-spacing:0.15em; text-transform:uppercase; color:var(--gold);">DLC Content</span>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- THE HAMLET -->
<section class="section section-surface">
    <div class="container">
        <div class="section-header">
            <span class="section-eyebrow">Your Base</span>
            <h2 class="section-title">The Hamlet</h2>
            <p class="section-subtitle">The last outpost of hope. Invest in it wisely—it is the only thing standing between your heroes and oblivion.</p>
            <div class="section-divider"></div>
        </div>
        <div class="grid-4">
            <div class="card" style="padding:1.8rem; text-align:center;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#9963;</span>
                <h3 class="card-title mb-2">The Tavern</h3>
                <p class="card-text">Heroes drink, gamble, and engage in debauchery to reduce stress. Sometimes this works. Sometimes they develop new vices instead.</p>
            </div>
            <div class="card" style="padding:1.8rem; text-align:center;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#9770;</span>
                <h3 class="card-title mb-2">The Abbey</h3>
                <p class="card-text">Prayer, meditation, and flagellation reduce stress for the devout. Different heroes respond to different treatments. Learn which.</p>
            </div>
            <div class="card" style="padding:1.8rem; text-align:center;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#9877;</span>
                <h3 class="card-title mb-2">The Sanitarium</h3>
                <p class="card-text">Treat quirks and afflictions. Lock in positive personality traits. Grind out the ones that get heroes killed. Expensive—but essential.</p>
            </div>
            <div class="card" style="padding:1.8rem; text-align:center;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#9876;</span>
                <h3 class="card-title mb-2">The Blacksmith</h3>
                <p class="card-text">Upgrade weapons and armor. Each tier of upgrade transforms a fragile recruit into something capable of surviving what awaits below.</p>
            </div>
        </div>
    </div>
</section>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
