<!-- weapon-card.jsp -->

<div class="weapon-card">

    <div class="weapon-card-left">

        <span class="weapon-icon">
            ${weapon.icon}
        </span>

    </div>

    <div class="weapon-card-body">

        <div class="weapon-card-header">

            <span class="weapon-rarity ${weapon.rarityClass}">
                &#9670; ${weapon.rarity}
            </span>

            <span class="weapon-type">
                ${weapon.type}
            </span>

        </div>

        <h3 class="weapon-name">
            ${weapon.name}
        </h3>

        <p class="weapon-desc">
            ${weapon.description}
        </p>

        <div class="weapon-effects">
            ${weapon.effects}
        </div>

        <div class="weapon-stats">

            <div class="weapon-stat">
                <span>DMG</span>
                <strong>${weapon.damage}</strong>
            </div>

            <div class="weapon-stat">
                <span>SPD</span>
                <strong>${weapon.speed}</strong>
            </div>

            <div class="weapon-stat">
                <span>CRIT</span>
                <strong>${weapon.crit}</strong>
            </div>

        </div>

        <a href="/weapons/${weapon.id}" class="weapon-btn">
            Inspect Relic
        </a>

    </div>

</div>