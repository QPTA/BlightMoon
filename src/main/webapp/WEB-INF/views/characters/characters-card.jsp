<div class="character-card">
    <div class="character-card-image-wrapper">
        <img class="character-card-img"
            src="${character.image}"
            alt="${character.name}"
            loading="lazy">

        <div class="character-card-overlay"></div>
    </div>

    <div class="character-card-body">
        <span class="character-class">
            ${character.race}
        </span>

        <h3 class="character-name">
            ${character.name}
        </h3>

        <p class="character-quote">
            "${character.quote}"
        </p>

        <a href="/characters/${character.id}" class="character-btn">
            View Profile
        </a>
    </div>
</div>