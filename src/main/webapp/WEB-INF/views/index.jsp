<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="/WEB-INF/views/layout/header.jsp" %>

        <!-- HERO -->
        

        
            <section id="home" class="hero">

                <div class="hero-bg"
                    style="background-image:url('${pageContext.request.contextPath}/img/backgroud.png');">
                </div>
                <div class="hero-overlay"></div>
                <div class="hero-vignette"></div>

                <!-- ============================================================
                                    HOME PAGE
        ============================================================= -->
                <div class="hero-content">
                    <div>
                        <div class="hero-eyebrow">Dark Fantasy RPG</div>
                        <h1 class="hero-title">MOON BLIGHT</h1>
                        <p class="hero-title-sub">Chìm vào thế giới hư vô bị nguyền rủa</p>
                        <div class="hero-divider"></div>
                        <!-- <p class="hero-desc">
                        Thiên hạ đã diệt vong. Tà lực cổ xưa đang thống trị cõi trần.
                        Ngươi phải hiệu triệu một đoàn tàn hồn và tiến nhập hắc ám —
                        nơi thần trí còn hiếm quý hơn kim ngân, và từ bi là xa xỉ phẩm mà ngươi không thể lưu giữ.
                    </p> -->
                        <div class="hero-buttons">
                            <a href="/story" class="btn btn-secondary btn-primary"> Begin the Journey</a>
                            <a href="${pageContext.request.contextPath}/files/DARK_MOON.zip" download="DARK_MOON.zip"
                                class="btn btn-primary">
                                &#9670; Tải xuống
                            </a>
                            <button onclick="openVideo()" class="btn btn-primary">
                                Xem Trailer &#9658;
                            </button>
                        </div>
                    </div>

                </div>
            </section>
        <div class="hero-spacer"></div>
        <!-- ============================================================
                                    VIDEO
        ============================================================= -->
<div class="content-wrapper">

        <div id="videoModal" class="video-modal" onclick="closeVideo()">

            <div class="video-container" onclick="event.stopPropagation()">

                <video id="videoPlayer" controls>
                    <source src="${pageContext.request.contextPath}/video/trailer.mp4" type="video/mp4">
                </video>

            </div>

        </div>


        

    <div class="parallax-wrapper">

        <!-- ================================================================
                                    STORY TEASER
        ================================================================= -->
        <section id="story" class="section section-dark section-stack">
            <c:if test="${not empty topStory}">
                <div class="container">
                    <div class="split-section">
                        <div class="split-img-wrapper">
                            <img src="${topStory.image}"
                                alt="${topStory.title}"
                                loading="lazy">
                        </div>
                        <div class="split-text">
                            <div class="split-tag">
                                ${topStory.tag}
                            </div>
                            <h2 class="split-title">
                                ${topStory.title}
                            </h2>
                            <div class="split-divider"></div>
                            <p class="split-body">
                                ${topStory.summary}
                            </p>
                            <a href="/story"
                            class="btn btn-primary">
                                Đọc toàn bộ
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
        </section>

        <!-- ==================================================================
                                    World
        =================================================================== -->



        <section id="world" class="section-world">
            <div class="container">
                <div class="split-section">
                    <div class="split-text">
                        <div class="split-tag">
                            ${topWorld.tag}
                        </div>
                        <h2 class="split-title">
                            ${topWorld.title}
                        </h2>
                        <div class="split-divider"></div>
                        <p class="split-body"
                        style="white-space: pre-line;">
                            ${topWorld.summary}
                        </p>
                        <a href="/world"
                        class="btn btn-primary">
                            Khám phá thế giới
                        </a>
                    </div>
                    <div class="split-img-wrapper">
                        <img src="${topWorld.image}"
                            alt="${topWorld.title}"
                            loading="lazy">
                    </div>
                </div>
            </div>
        </section>
        <!-- ==================================================================
                                    CHARACTER PREVIEW
        =================================================================== -->
        



        <section id="character" class="section section-darker section-stack">
            <div class="container">
                <div class="section-header">
                    <span class="section-eyebrow">Tội Nhân</span>
                    <h2 class="section-title">Kẻ cầm quyền tàn ác</h2>
                    <p class="section-subtitle">Những tàn hồn liên kết cùng nhau bởi tuyệt vọng và hắc ý.</p>
                    <div class="section-divider"></div>
                </div>
                <div class="grid-4">
                    <c:forEach items="${characters}" var="character">
                         <div class="character-card">
                            <img class="character-card-img"
                                src="${character.image}"
                                alt="${character.name}"
                                loading="lazy">
                            <div class="character-card-body">
                                <span class="character-class">${character.race}</span>
                                <h3 class="character-name">${character.name}</h3>
                                <div class="character-quote">"${character.quote}"</div>
                            </div>
                         </div>
                    </c:forEach>
                </div>
                <div class="text-center mt-4">
                    <a href="/characters" class="btn btn-secondary">Xem thêm</a>
                </div>
            </div>
        </section>

        </div>


        <!-- ==================================================================
                                    QUOTE SECTION
        =================================================================== -->
        <div class="backgroud-img">

        <section  class="section section-surface section-stack" style="padding:5rem 2rem;">
            <div class="container-sm">
                <div class="quote-block">
                    <p class="quote-text">
                        Hãy ghi nhớ: đích đến vốn chẳng phải là điều trọng yếu. Xưa nay chưa từng là như vậy.
                        Sự trầm giáng mới là mục đích. Hắc ám mới là đáp án.
                        Ngươi hoặc sẽ tái xuất sau khi chinh phục cơn ác mộng —
                        hoặc sẽ vĩnh viễn không tái xuất nữa.
                    </p>
                    <span class="quote-author">— The Ancestor, Final Testament</span>
                </div>
            </div>
        </section>

        <!-- ==================================================================
                                    NEWS PREVIEW
        =================================================================== -->


        <section id="news" class="section section-dark section-stack">
            <div class="container">
                <div class="section-header">
                    <span class="section-eyebrow">Thông điệp từ vực thẳm</span>
                    <h2 class="section-title">Tin tức</h2>
                    <div class="section-divider"></div>
                </div>
        <div class="grid-3">

            <c:forEach items="${articles}" var="article">

                <div class="card">

                    <img class="card-img"
                        src="${article.thumbnailUrl}"
                        alt="${article.title}"
                        loading="lazy">

                    <div class="card-body">

                        <span class="card-tag">
                            ${article.type}
                        </span>

                        <h3 class="card-title">
                            ${article.title}
                        </h3>

                        <!-- <p class="card-text">
                            ${article.summary}
                        </p> -->

                    </div>

                    <div class="card-footer">

                        <span class="font-Cormorant Garamond text-grey">
                            ${article.createdAt}
                        </span>

                        <a href="/news/${article.id}"
                        class="text-crimson font-Lora">
                            Đọc thêm →
                        </a>

                    </div>

                </div>

            </c:forEach>

        </div>
                <div class="text-center mt-4">
                    <a href="/news" class="btn btn-secondary">Xem tất cả</a>
                </div>
            </div>
        </section>

        
        <!-- Footer -->
        <%@ include file="/WEB-INF/views/layout/footer.jsp" %>
        </div>
        </div>
