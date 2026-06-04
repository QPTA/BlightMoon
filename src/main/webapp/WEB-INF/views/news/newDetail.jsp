<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="/WEB-INF/views/layout/header.jsp" %>

        <section class="page-hero">
            <div class="page-hero-bg"
                style="background-image:url('https://images.unsplash.com/photo-1534447677768-be436bb09401?w=1920&q=80');">
            </div>
            <div class="page-hero-overlay"></div>
            <div class="page-hero-content">
                <h1 class="page-hero-title">Tin tức</h1>
                <p class="page-hero-subtitle">Cập nhật tình hình từ tiền tuyến khai phá. Đại nghiệp diễn tiến. Hắc ám
                    diên miên.</p>
            </div>
        </section>

        <section class="news-layout">

            <div class="news-left">

                <img class="card-img"
                    src="${article.thumbnailUrl}"
                    alt="${article.title}"
                    loading="lazy">

                <div class="news-content">

                    <h2 class="news-category">
                        ${article.type}
                    </h2>

                    <span class="news-date">
                        Ngày đăng: ${article.createdAt}
                    </span>

                </div>

                <h2
                    style="
                        font-family:'Cormorant Garamond',serif;
                        font-size:1.8rem;
                        color:var(--cream);
                        margin-bottom:1rem;
                        line-height:1.3;
                    ">
                    ${article.title}
                </h2>

                <div class="news-body">
                    <p>
                        ${article.content}
                    </p>
                </div>

            </div>

            <aside class="news-right">

                <c:forEach items="${articles}" var="newsItem">

                    <div class="card">

                        <img class="card-img"
                            src="${newsItem.thumbnailUrl}"
                            alt="${newsItem.title}"
                            loading="lazy">

                        <div class="card-body">

                            <span class="card-tag">
                                ${newsItem.type}
                            </span>

                            <h3 class="card-title">
                                ${newsItem.title}
                            </h3>

                            <p class="card-text">
                                ${newsItem.summary}
                            </p>

                        </div>

                        <div class="card-footer">

                            <span class="font-Cormorant-Garamond text-grey">
                                ${newsItem.createdAt}
                            </span>

                            <a href="/news/${newsItem.id}"
                            class="text-crimson font-Lora">
                                Đọc thêm →
                            </a>

                        </div>

                    </div>

                </c:forEach>

            </aside>

        </section>


        <%@ include file="/WEB-INF/views/layout/footer.jsp" %>