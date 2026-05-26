<!-- enemy-card.jsp -->

<div class="enemy-card">

    <div class="enemy-card-top">

        <span class="enemy-icon">
            ${enemy.icon}
        </span>

        <span class="enemy-threat ${enemy.threatClass}">
            &#9670; ${enemy.threatLevel}
        </span>

    </div>

    <div class="enemy-card-body">

        <span class="enemy-type">
            ${enemy.type}
        </span>

        <h3 class="enemy-name">
            ${enemy.name}
        </h3>

        <p class="enemy-desc">
            ${enemy.description}
        </p>

        <div class="enemy-stats">

            <div class="enemy-stat">
                <span>HP</span>
                <strong>${enemy.hp}</strong>
            </div>

            <div class="enemy-stat">
                <span>ATK</span>
                <strong>${enemy.attack}</strong>
            </div>

            <div class="enemy-stat">
                <span>DEF</span>
                <strong>${enemy.defense}</strong>
            </div>

        </div>

        <a href="/enemies/${enemy.id}" class="enemy-btn">
            View Entity
        </a>

    </div>

</div>